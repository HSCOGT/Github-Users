import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:github_users/github/core/domain/github_failure.dart';
import 'package:github_users/github/users/presentation/widgets/paginated_users_list_view.dart';

class FailureUserTile extends ConsumerWidget {
  final GithubFailure failure;

  const FailureUserTile({
    Key? key,
    required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTileTheme(
      textColor: Theme.of(context).colorScheme.onError,
      iconColor: Theme.of(context).colorScheme.onError,
      child: Card(
        color: Theme.of(context).errorColor,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListTile(
          title: const Text('An error occured, please, retry'),
          subtitle: Text(
            failure.map(
              api: (_) => 'API returned ${_.errorCode}',
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          leading: const SizedBox(
            height: double.infinity,
            child: Icon(Icons.warning),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              context
                  .findAncestorWidgetOfExactType<PaginatedUsersListView>()
                  ?.getNextPage(ref);
            },
          ),
        ),
      ),
    );
  }
}
