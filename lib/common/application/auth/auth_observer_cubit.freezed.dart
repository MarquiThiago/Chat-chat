// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_observer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthObserverState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure<dynamic> failure) failure,
    required TResult Function() unauthenticated,
    required TResult Function(User user) authAndHasUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure<dynamic> failure)? failure,
    TResult? Function()? unauthenticated,
    TResult? Function(User user)? authAndHasUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure<dynamic> failure)? failure,
    TResult Function()? unauthenticated,
    TResult Function(User user)? authAndHasUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_AuthAndHasUser value) authAndHasUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_AuthAndHasUser value)? authAndHasUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_AuthAndHasUser value)? authAndHasUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthObserverStateCopyWith<$Res> {
  factory $AuthObserverStateCopyWith(
          AuthObserverState value, $Res Function(AuthObserverState) then) =
      _$AuthObserverStateCopyWithImpl<$Res, AuthObserverState>;
}

/// @nodoc
class _$AuthObserverStateCopyWithImpl<$Res, $Val extends AuthObserverState>
    implements $AuthObserverStateCopyWith<$Res> {
  _$AuthObserverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthObserverStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthObserverState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure<dynamic> failure) failure,
    required TResult Function() unauthenticated,
    required TResult Function(User user) authAndHasUser,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure<dynamic> failure)? failure,
    TResult? Function()? unauthenticated,
    TResult? Function(User user)? authAndHasUser,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure<dynamic> failure)? failure,
    TResult Function()? unauthenticated,
    TResult Function(User user)? authAndHasUser,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_AuthAndHasUser value) authAndHasUser,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_AuthAndHasUser value)? authAndHasUser,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_AuthAndHasUser value)? authAndHasUser,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthObserverState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$AuthObserverStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailureImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure<dynamic>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<dynamic, $Res> get failure {
    return $FailureCopyWith<dynamic, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.failure});

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'AuthObserverState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure<dynamic> failure) failure,
    required TResult Function() unauthenticated,
    required TResult Function(User user) authAndHasUser,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure<dynamic> failure)? failure,
    TResult? Function()? unauthenticated,
    TResult? Function(User user)? authAndHasUser,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure<dynamic> failure)? failure,
    TResult Function()? unauthenticated,
    TResult Function(User user)? authAndHasUser,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_AuthAndHasUser value) authAndHasUser,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_AuthAndHasUser value)? authAndHasUser,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_AuthAndHasUser value)? authAndHasUser,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AuthObserverState {
  const factory _Failure({required final Failure<dynamic> failure}) =
      _$FailureImpl;

  Failure<dynamic> get failure;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthObserverStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthenticatedImpl implements _Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'AuthObserverState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure<dynamic> failure) failure,
    required TResult Function() unauthenticated,
    required TResult Function(User user) authAndHasUser,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure<dynamic> failure)? failure,
    TResult? Function()? unauthenticated,
    TResult? Function(User user)? authAndHasUser,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure<dynamic> failure)? failure,
    TResult Function()? unauthenticated,
    TResult Function(User user)? authAndHasUser,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_AuthAndHasUser value) authAndHasUser,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_AuthAndHasUser value)? authAndHasUser,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_AuthAndHasUser value)? authAndHasUser,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthObserverState {
  const factory _Unauthenticated() = _$UnauthenticatedImpl;
}

/// @nodoc
abstract class _$$AuthAndHasUserImplCopyWith<$Res> {
  factory _$$AuthAndHasUserImplCopyWith(_$AuthAndHasUserImpl value,
          $Res Function(_$AuthAndHasUserImpl) then) =
      __$$AuthAndHasUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$AuthAndHasUserImplCopyWithImpl<$Res>
    extends _$AuthObserverStateCopyWithImpl<$Res, _$AuthAndHasUserImpl>
    implements _$$AuthAndHasUserImplCopyWith<$Res> {
  __$$AuthAndHasUserImplCopyWithImpl(
      _$AuthAndHasUserImpl _value, $Res Function(_$AuthAndHasUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthAndHasUserImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthAndHasUserImpl implements _AuthAndHasUser {
  const _$AuthAndHasUserImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AuthObserverState.authAndHasUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthAndHasUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthAndHasUserImplCopyWith<_$AuthAndHasUserImpl> get copyWith =>
      __$$AuthAndHasUserImplCopyWithImpl<_$AuthAndHasUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure<dynamic> failure) failure,
    required TResult Function() unauthenticated,
    required TResult Function(User user) authAndHasUser,
  }) {
    return authAndHasUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure<dynamic> failure)? failure,
    TResult? Function()? unauthenticated,
    TResult? Function(User user)? authAndHasUser,
  }) {
    return authAndHasUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure<dynamic> failure)? failure,
    TResult Function()? unauthenticated,
    TResult Function(User user)? authAndHasUser,
    required TResult orElse(),
  }) {
    if (authAndHasUser != null) {
      return authAndHasUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_AuthAndHasUser value) authAndHasUser,
  }) {
    return authAndHasUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_AuthAndHasUser value)? authAndHasUser,
  }) {
    return authAndHasUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_AuthAndHasUser value)? authAndHasUser,
    required TResult orElse(),
  }) {
    if (authAndHasUser != null) {
      return authAndHasUser(this);
    }
    return orElse();
  }
}

abstract class _AuthAndHasUser implements AuthObserverState {
  const factory _AuthAndHasUser({required final User user}) =
      _$AuthAndHasUserImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$AuthAndHasUserImplCopyWith<_$AuthAndHasUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
