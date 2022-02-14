import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:github_users/core/presentation/toasts.dart';
import 'package:github_users/github/core/presentation/no_results_display.dart';
import 'package:github_users/github/users/application/paginated_users_notifier.dart';
import 'package:github_users/github/users/presentation/widgets/failure_user_tile.dart';
import 'package:github_users/github/users/presentation/widgets/loading_user_tile.dart';
import 'package:github_users/github/users/presentation/widgets/user_tile.dart';

class PaginatedUsersListView extends StatefulWidget {
  final AutoDisposeStateNotifierProvider<PaginatedUsersNotifier,
      PaginatedUsersState> paginatedUsersNotifierProvider;
  final void Function(WidgetRef ref) getNextPage;
  final String noResultsMessage;

  const PaginatedUsersListView({
    Key? key,
    required this.paginatedUsersNotifierProvider,
    required this.getNextPage,
    required this.noResultsMessage,
  }) : super(key: key);

  @override
  _PaginatedUsersListViewState createState() => _PaginatedUsersListViewState();
}

class _PaginatedUsersListViewState extends State<PaginatedUsersListView> {
  bool canLoadNextPage = false;
  bool hasAlreadyShownNoConnectionToast = false;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final state = ref.watch(widget.paginatedUsersNotifierProvider);
        ref.listen<PaginatedUsersState>(
          widget.paginatedUsersNotifierProvider,
          (previous, next) {
            next.map(
              initial: (_) => canLoadNextPage = true,
              loadInProgress: (_) => canLoadNextPage = false,
              loadSuccess: (_) {
                if (!_.users.isFresh && !hasAlreadyShownNoConnectionToast) {
                  hasAlreadyShownNoConnectionToast = true;
                  showNoConnectionToast(
                    "You're not online. Some information may be outdated.",
                    context,
                  );
                }
                canLoadNextPage = _.isNextPageAvailable;
              },
              loadFailure: (_) => canLoadNextPage = false,
            );
          },
        );

        return NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            final metrics = notification.metrics;
            final limit =
                metrics.maxScrollExtent - metrics.viewportDimension / 3;

            if (canLoadNextPage && metrics.pixels >= limit) {
              canLoadNextPage = false;
              widget.getNextPage(ref);
            }
            return false;
          },
          child: state.maybeWhen(
            loadSuccess: (users, _) => users.entity.isEmpty,
            orElse: () => false,
          )
              ? NoResultsDisplay(
                  message: widget.noResultsMessage,
                )
              : _PaginatedListView(state: state),
        );
      },
    );
  }
}

class _PaginatedListView extends StatelessWidget {
  const _PaginatedListView({
    Key? key,
    required this.state,
  }) : super(key: key);

  final PaginatedUsersState state;

  @override
  Widget build(BuildContext context) {
    final fsb = FloatingSearchBar.of(context)?.widget;
    return ListView.builder(
      padding: fsb == null
          ? EdgeInsets.zero
          : EdgeInsets.only(
              top: fsb.height + 8 + MediaQuery.of(context).padding.top,
            ),
      itemCount: state.map(
        initial: (_) => 0,
        loadInProgress: (_) => _.users.entity.length + _.itemsPerPage,
        loadSuccess: (_) => _.users.entity.length,
        loadFailure: (_) => _.users.entity.length + 1,
      ),
      itemBuilder: (contex, index) {
        return state.map(
          initial: (_) => UserTile(user: _.users.entity[index]),
          loadInProgress: (_) {
            if (index < _.users.entity.length) {
              return UserTile(user: _.users.entity[index]);
            } else {
              return const LoadingUserTile();
            }
          },
          loadSuccess: (_) => UserTile(
            user: _.users.entity[index],
          ),
          loadFailure: (_) {
            if (index < _.users.entity.length) {
              return UserTile(user: _.users.entity[index]);
            } else {
              return FailureUserTile(failure: _.failure);
            }
          },
        );
      },
    );
  }
}
