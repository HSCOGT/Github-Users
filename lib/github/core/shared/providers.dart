import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:github_users/core/shared/providers.dart';
import 'package:github_users/github/core/infrastructure/github_headers_cache.dart';
import 'package:github_users/github/users/application/paginated_users_notifier.dart';
import 'package:github_users/github/users/application/searched_users_notifier.dart';
import 'package:github_users/github/users/infrastructure/searched_users_remote_service.dart';
import 'package:github_users/github/users/infrastructure/searched_users_repository.dart';

final githubHeadersCacheProvider = Provider(
  (ref) => GithubHeadersCache(ref.watch(sembastProvider)),
);

// ------------------------------------Users------------------------------------
final searchedUsersRemoteServiceProvider = Provider(
  (ref) => SearchedUsersRemoteService(
    ref.watch(dioProvider),
    ref.watch(githubHeadersCacheProvider),
  ),
);

final searchedUsersRepositoryProvider = Provider(
  (ref) => SearchedUsersRepository(
    ref.watch(searchedUsersRemoteServiceProvider),
  ),
);

final searchedUsersNotifierProvider = StateNotifierProvider.autoDispose<
    SearchedUsersNotifier, PaginatedUsersState>(
  (ref) => SearchedUsersNotifier(ref.watch(searchedUsersRepositoryProvider)),
);
