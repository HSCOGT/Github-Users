import 'package:dio/dio.dart';
import 'package:github_users/core/infrastructure/remote_response.dart';
import 'package:github_users/github/core/infrastructure/github_headers_cache.dart';
import 'package:github_users/github/core/infrastructure/pagination_config.dart';
import 'package:github_users/github/core/infrastructure/user_dto.dart';
import 'package:github_users/github/users/infrastructure/users_remote_service.dart';

class SearchedUsersRemoteService extends UsersRemoteService {
  SearchedUsersRemoteService(
    Dio dio,
    GithubHeadersCache headersCache,
  ) : super(dio, headersCache);

  Future<RemoteResponse<List<UserDTO>>> getSearchedUsersPage(
    String query,
    int page,
  ) async =>
      super.getPage(
        requestUri: Uri.https(
          'api.github.com',
          '/search/users',
          {
            'q': query,
            'page': '$page',
            'per_page': PaginationConfig.itemsPerPage.toString(),
          },
        ),
        jsonDataSelector: (json) => json['items'] as List<dynamic>,
      );
}
