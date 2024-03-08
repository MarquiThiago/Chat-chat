part of 'auth_observer_cubit.dart';

@freezed
class AuthObserverState with _$AuthObserverState {
  const factory AuthObserverState.initial() = _Initial;
  const factory AuthObserverState.failure({required Failure failure}) =
      _Failure;
  const factory AuthObserverState.unauthenticated() = _Unauthenticated;
  // const factory AuthObserverState.authenticated({required UserUid userUid}) =
  //     _Authenticated;
  const factory AuthObserverState.authAndHasUser({
    required User user,
  }) = _AuthAndHasUser;
}
