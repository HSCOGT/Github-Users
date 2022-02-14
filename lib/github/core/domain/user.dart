import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String name,
    required String avatarUrl,
    required int publicRepos,
  }) = _User;

  String get avatarUrlSmall => '$avatarUrl&s=64';
}
