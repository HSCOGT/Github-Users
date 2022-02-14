import 'package:dartz/dartz.dart';
import 'package:github_users/core/domain/fresh.dart';
import 'package:github_users/core/infrastructure/network_exceptions.dart';
import 'package:github_users/github/core/domain/github_failure.dart';
import 'package:github_users/github/core/domain/user.dart';
import 'package:github_users/github/users/infrastructure/searched_users_remote_service.dart';

class SearchedUsersRepository {
  final SearchedUsersRemoteService _remoteService;

  SearchedUsersRepository(this._remoteService);

  Future<Either<GithubFailure, Fresh<List<User>>>> getSearchedUsersPage(
    String query,
    int page,
  ) async {
    try {
      final remotePageItems =
          await _remoteService.getSearchedUsersPage(query, page);
      return right(
        remotePageItems.maybeWhen(
          withNewData: (data, maxPage) => Fresh.yes(
            data.map((e) => e.toDomain()).toList(),
            isNextPageAvailable: page < maxPage,
          ),
          orElse: () => Fresh.no([], isNextPageAvailable: false),
        ),
      );
    } on RestApiException catch (e) {
      return left(GithubFailure.api(e.errorCode));
    }
  }
}
