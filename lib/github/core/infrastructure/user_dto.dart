import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_users/github/core/domain/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const UserDTO._();
  const factory UserDTO({
    @JsonKey(name: 'login') required String name,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
    @JsonKey(name: 'public_repos') int? publicRepos,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  factory UserDTO.fromDomain(User _) {
    return UserDTO(
      name: _.name,
      avatarUrl: _.avatarUrl,
      publicRepos: _.publicRepos,
    );
  }

  User toDomain() {
    return User(
      name: name,
      avatarUrl: avatarUrl,
      publicRepos: publicRepos ?? Random().nextInt(100),
    );
  }
}
