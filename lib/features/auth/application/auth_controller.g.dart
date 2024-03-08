// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthController on _AuthControllerBase, Store {
  late final _$statusAtom =
      Atom(name: '_AuthControllerBase.status', context: context);

  @override
  OperationStatus<UserCredential> get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(OperationStatus<UserCredential> value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  late final _$createUserAsyncAction =
      AsyncAction('_AuthControllerBase.createUser', context: context);

  @override
  Future<void> createUser(String email, String password) {
    return _$createUserAsyncAction.run(() => super.createUser(email, password));
  }

  late final _$signInAsyncAction =
      AsyncAction('_AuthControllerBase.signIn', context: context);

  @override
  Future<void> signIn(String email, String password) {
    return _$signInAsyncAction.run(() => super.signIn(email, password));
  }

  late final _$logOutAsyncAction =
      AsyncAction('_AuthControllerBase.logOut', context: context);

  @override
  Future<void> logOut() {
    return _$logOutAsyncAction.run(() => super.logOut());
  }

  @override
  String toString() {
    return '''
status: ${status}
    ''';
  }
}
