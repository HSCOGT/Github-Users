import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:github_users/core/presentation/routes/app_router.gr.dart';
import 'package:github_users/github/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:github_users/github/users/presentation/widgets/paginated_users_list_view.dart';
import 'package:github_users/search/presentation/search_bar.dart';

class SearchedUsersPage extends ConsumerStatefulWidget {
  final String searchTerm;

  const SearchedUsersPage({
    Key? key,
    required this.searchTerm,
  }) : super(key: key);

  @override
  _SearchedUsersPageState createState() => _SearchedUsersPageState();
}

class _SearchedUsersPageState extends ConsumerState<SearchedUsersPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref
        .read(searchedUsersNotifierProvider.notifier)
        .getFirstSearchedUsersPage(widget.searchTerm));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchBar(
        title: widget.searchTerm,
        hint: 'Search for any GitHub user...',
        onShouldNavigateToResultPage: (searchTerm) {
          AutoRouter.of(context).pushAndPopUntil(
            SearchedUsersRoute(searchTerm: searchTerm),
            predicate: (route) => route.settings.name == HomeRoute.name,
          );
        },
        body: PaginatedUsersListView(
          paginatedUsersNotifierProvider: searchedUsersNotifierProvider,
          getNextPage: (ref) {
            ref
                .read(searchedUsersNotifierProvider.notifier)
                .getNextSearchedUsersPage(widget.searchTerm);
          },
          noResultsMessage:
              "Sorry, we couldn't find any users matching the search term.",
        ),
      ),
    );
  }
}
