// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paginated_users_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaginatedUsersStateTearOff {
  const _$PaginatedUsersStateTearOff();

  _Initial initial(Fresh<List<User>> users) {
    return _Initial(
      users,
    );
  }

  _LoadInProgress loadInProgress(Fresh<List<User>> users, int itemsPerPage) {
    return _LoadInProgress(
      users,
      itemsPerPage,
    );
  }

  _LoadSuccess loadSuccess(Fresh<List<User>> users,
      {required bool isNextPageAvailable}) {
    return _LoadSuccess(
      users,
      isNextPageAvailable: isNextPageAvailable,
    );
  }

  _LoadFailure loadFailure(Fresh<List<User>> users, GithubFailure failure) {
    return _LoadFailure(
      users,
      failure,
    );
  }
}

/// @nodoc
const $PaginatedUsersState = _$PaginatedUsersStateTearOff();

/// @nodoc
mixin _$PaginatedUsersState {
  Fresh<List<User>> get users => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<User>> users) initial,
    required TResult Function(Fresh<List<User>> users, int itemsPerPage)
        loadInProgress,
    required TResult Function(Fresh<List<User>> users, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<User>> users, GithubFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Fresh<List<User>> users)? initial,
    TResult Function(Fresh<List<User>> users, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<User>> users, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<User>> users, GithubFailure failure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<User>> users)? initial,
    TResult Function(Fresh<List<User>> users, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<User>> users, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<User>> users, GithubFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedUsersStateCopyWith<PaginatedUsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedUsersStateCopyWith<$Res> {
  factory $PaginatedUsersStateCopyWith(
          PaginatedUsersState value, $Res Function(PaginatedUsersState) then) =
      _$PaginatedUsersStateCopyWithImpl<$Res>;
  $Res call({Fresh<List<User>> users});

  $FreshCopyWith<List<User>, $Res> get users;
}

/// @nodoc
class _$PaginatedUsersStateCopyWithImpl<$Res>
    implements $PaginatedUsersStateCopyWith<$Res> {
  _$PaginatedUsersStateCopyWithImpl(this._value, this._then);

  final PaginatedUsersState _value;
  // ignore: unused_field
  final $Res Function(PaginatedUsersState) _then;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Fresh<List<User>>,
    ));
  }

  @override
  $FreshCopyWith<List<User>, $Res> get users {
    return $FreshCopyWith<List<User>, $Res>(_value.users, (value) {
      return _then(_value.copyWith(users: value));
    });
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $PaginatedUsersStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<List<User>> users});

  @override
  $FreshCopyWith<List<User>, $Res> get users;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PaginatedUsersStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_Initial(
      users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Fresh<List<User>>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(this.users) : super._();

  @override
  final Fresh<List<User>> users;

  @override
  String toString() {
    return 'PaginatedUsersState.initial(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            (identical(other.users, users) || other.users == users));
  }

  @override
  int get hashCode => Object.hash(runtimeType, users);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<User>> users) initial,
    required TResult Function(Fresh<List<User>> users, int itemsPerPage)
        loadInProgress,
    required TResult Function(Fresh<List<User>> users, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<User>> users, GithubFailure failure)
        loadFailure,
  }) {
    return initial(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Fresh<List<User>> users)? initial,
    TResult Function(Fresh<List<User>> users, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<User>> users, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<User>> users, GithubFailure failure)?
        loadFailure,
  }) {
    return initial?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<User>> users)? initial,
    TResult Function(Fresh<List<User>> users, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<User>> users, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<User>> users, GithubFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends PaginatedUsersState {
  const factory _Initial(Fresh<List<User>> users) = _$_Initial;
  const _Initial._() : super._();

  @override
  Fresh<List<User>> get users;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res>
    implements $PaginatedUsersStateCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<List<User>> users, int itemsPerPage});

  @override
  $FreshCopyWith<List<User>, $Res> get users;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$PaginatedUsersStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;

  @override
  $Res call({
    Object? users = freezed,
    Object? itemsPerPage = freezed,
  }) {
    return _then(_LoadInProgress(
      users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Fresh<List<User>>,
      itemsPerPage == freezed
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress extends _LoadInProgress {
  const _$_LoadInProgress(this.users, this.itemsPerPage) : super._();

  @override
  final Fresh<List<User>> users;
  @override
  final int itemsPerPage;

  @override
  String toString() {
    return 'PaginatedUsersState.loadInProgress(users: $users, itemsPerPage: $itemsPerPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadInProgress &&
            (identical(other.users, users) || other.users == users) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, users, itemsPerPage);

  @JsonKey(ignore: true)
  @override
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      __$LoadInProgressCopyWithImpl<_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<User>> users) initial,
    required TResult Function(Fresh<List<User>> users, int itemsPerPage)
        loadInProgress,
    required TResult Function(Fresh<List<User>> users, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<User>> users, GithubFailure failure)
        loadFailure,
  }) {
    return loadInProgress(users, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Fresh<List<User>> users)? initial,
    TResult Function(Fresh<List<User>> users, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<User>> users, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<User>> users, GithubFailure failure)?
        loadFailure,
  }) {
    return loadInProgress?.call(users, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<User>> users)? initial,
    TResult Function(Fresh<List<User>> users, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<User>> users, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<User>> users, GithubFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(users, itemsPerPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress extends PaginatedUsersState {
  const factory _LoadInProgress(Fresh<List<User>> users, int itemsPerPage) =
      _$_LoadInProgress;
  const _LoadInProgress._() : super._();

  @override
  Fresh<List<User>> get users;
  int get itemsPerPage;
  @override
  @JsonKey(ignore: true)
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res>
    implements $PaginatedUsersStateCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<List<User>> users, bool isNextPageAvailable});

  @override
  $FreshCopyWith<List<User>, $Res> get users;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$PaginatedUsersStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? users = freezed,
    Object? isNextPageAvailable = freezed,
  }) {
    return _then(_LoadSuccess(
      users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Fresh<List<User>>,
      isNextPageAvailable: isNextPageAvailable == freezed
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess {
  const _$_LoadSuccess(this.users, {required this.isNextPageAvailable})
      : super._();

  @override
  final Fresh<List<User>> users;
  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'PaginatedUsersState.loadSuccess(users: $users, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            (identical(other.users, users) || other.users == users) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, users, isNextPageAvailable);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<User>> users) initial,
    required TResult Function(Fresh<List<User>> users, int itemsPerPage)
        loadInProgress,
    required TResult Function(Fresh<List<User>> users, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<User>> users, GithubFailure failure)
        loadFailure,
  }) {
    return loadSuccess(users, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Fresh<List<User>> users)? initial,
    TResult Function(Fresh<List<User>> users, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<User>> users, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<User>> users, GithubFailure failure)?
        loadFailure,
  }) {
    return loadSuccess?.call(users, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<User>> users)? initial,
    TResult Function(Fresh<List<User>> users, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<User>> users, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<User>> users, GithubFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(users, isNextPageAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess extends PaginatedUsersState {
  const factory _LoadSuccess(Fresh<List<User>> users,
      {required bool isNextPageAvailable}) = _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  Fresh<List<User>> get users;
  bool get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res>
    implements $PaginatedUsersStateCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<List<User>> users, GithubFailure failure});

  @override
  $FreshCopyWith<List<User>, $Res> get users;
  $GithubFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$PaginatedUsersStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? users = freezed,
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
      users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Fresh<List<User>>,
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GithubFailure,
    ));
  }

  @override
  $GithubFailureCopyWith<$Res> get failure {
    return $GithubFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure extends _LoadFailure {
  const _$_LoadFailure(this.users, this.failure) : super._();

  @override
  final Fresh<List<User>> users;
  @override
  final GithubFailure failure;

  @override
  String toString() {
    return 'PaginatedUsersState.loadFailure(users: $users, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            (identical(other.users, users) || other.users == users) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, users, failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<User>> users) initial,
    required TResult Function(Fresh<List<User>> users, int itemsPerPage)
        loadInProgress,
    required TResult Function(Fresh<List<User>> users, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<User>> users, GithubFailure failure)
        loadFailure,
  }) {
    return loadFailure(users, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Fresh<List<User>> users)? initial,
    TResult Function(Fresh<List<User>> users, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<User>> users, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<User>> users, GithubFailure failure)?
        loadFailure,
  }) {
    return loadFailure?.call(users, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<User>> users)? initial,
    TResult Function(Fresh<List<User>> users, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<User>> users, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<User>> users, GithubFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(users, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure extends PaginatedUsersState {
  const factory _LoadFailure(Fresh<List<User>> users, GithubFailure failure) =
      _$_LoadFailure;
  const _LoadFailure._() : super._();

  @override
  Fresh<List<User>> get users;
  GithubFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
