import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:github_users/core/domain/fresh.dart';
import 'package:github_users/github/core/domain/github_failure.dart';
import 'package:github_users/github/core/domain/user.dart';
import 'package:github_users/github/core/infrastructure/pagination_config.dart';

part 'paginated_users_notifier.freezed.dart';

typedef UserGetter = Future<Either<GithubFailure, Fresh<List<User>>>> Function(
  int page,
);

@freezed
class PaginatedUsersState with _$PaginatedUsersState {
  const PaginatedUsersState._();
  const factory PaginatedUsersState.initial(
    Fresh<List<User>> users,
  ) = _Initial;
  const factory PaginatedUsersState.loadInProgress(
    Fresh<List<User>> users,
    int itemsPerPage,
  ) = _LoadInProgress;
  const factory PaginatedUsersState.loadSuccess(
    Fresh<List<User>> users, {
    required bool isNextPageAvailable,
  }) = _LoadSuccess;
  const factory PaginatedUsersState.loadFailure(
    Fresh<List<User>> users,
    GithubFailure failure,
  ) = _LoadFailure;
}

class PaginatedUsersNotifier extends StateNotifier<PaginatedUsersState> {
  PaginatedUsersNotifier() : super(PaginatedUsersState.initial(Fresh.yes([])));

  int _page = 1;

  @protected
  void resetState() {
    _page = 1;
    state = PaginatedUsersState.initial(Fresh.yes([]));
  }

  @protected
  Future<void> getNextPage(UserGetter getter) async {
    state = PaginatedUsersState.loadInProgress(
      state.users,
      PaginationConfig.itemsPerPage,
    );
    final failureOrUsers = await getter(_page);
    state = failureOrUsers.fold(
      (l) => PaginatedUsersState.loadFailure(state.users, l),
      (r) {
        _page++;
        return PaginatedUsersState.loadSuccess(
          r.copyWith(
            entity: [
              ...state.users.entity,
              ...r.entity,
            ],
          ),
          isNextPageAvailable: r.isNextPageAvailable ?? false,
        );
      },
    );
  }
}
