import 'package:dio/dio.dart';
import 'package:github_users/core/infrastructure/network_exceptions.dart';
import 'package:github_users/core/infrastructure/remote_response.dart';
import 'package:github_users/github/core/infrastructure/github_headers.dart';
import 'package:github_users/github/core/infrastructure/github_headers_cache.dart';
import 'package:github_users/core/infrastructure/dio_extensions.dart';
import 'package:github_users/github/core/infrastructure/user_dto.dart';

abstract class UsersRemoteService {
  final Dio _dio;
  final GithubHeadersCache _headersCache;

  UsersRemoteService(
    this._dio,
    this._headersCache,
  );

  Future<RemoteResponse<List<UserDTO>>> getPage({
    required Uri requestUri,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
  }) async {
    final previousHeaders = await _headersCache.getHeaders(requestUri);

    try {
      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {
            'If-None-Match': previousHeaders?.etag ?? '',
          },
        ),
      );

      if (response.statusCode == 304) {
        return RemoteResponse.notModified(
          maxPage: previousHeaders?.link?.maxPage ?? 0,
        );
      } else if (response.statusCode == 200) {
        final headers = GithubHeaders.parse(response);

        await _headersCache.saveHeaders(requestUri, headers);

        // TODO: Get repos amount per User.
        // Not efficient, possible solution through GraphQL.
        // Repo amount is random at the moment.
        /* List<UserDTO> convertedData = [];
        for (var user in jsonDataSelector(response.data)) {
          if (user.containsKey("repos_url")) {
            final response = await _dio.getUri(Uri.parse(user["repos_url"]));
          }
          convertedData.add(UserDTO.fromJson(user));
        } */
        final convertedData = jsonDataSelector(response.data)
            .map((e) => UserDTO.fromJson(e as Map<String, dynamic>))
            .toList();
        return RemoteResponse.withNewData(
          convertedData,
          maxPage: headers.link?.maxPage ?? 1,
        );
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }
}
