import 'package:github_users/github/users/application/paginated_users_notifier.dart';
import 'package:github_users/github/users/infrastructure/searched_users_repository.dart';

class SearchedUsersNotifier extends PaginatedUsersNotifier {
  final SearchedUsersRepository _repository;

  SearchedUsersNotifier(this._repository);

  Future<void> getFirstSearchedUsersPage(String query) async {
    super.resetState();
    await getNextSearchedUsersPage(query);
  }

  Future<void> getNextSearchedUsersPage(String query) async {
    super.getNextPage((page) => _repository.getSearchedUsersPage(query, page));
  }
}
