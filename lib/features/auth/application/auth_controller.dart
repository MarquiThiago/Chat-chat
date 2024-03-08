import 'package:chat_chat/common/application/status/operation_status.dart';
import 'package:chat_chat/features/auth/infrastructure/i_auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

part 'auth_controller.g.dart';

// ignore: library_private_types_in_public_api
class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  _AuthControllerBase(
    this._authRepository,
  );

  final IAuthRepository _authRepository;

  @observable
  OperationStatus<UserCredential> status = const OperationStatus.initial();

  @action
  Future<void> createUser(String email, String password) async {
    final response =
        await _authRepository.signUpWithEmailAndPassword(email, password);
    return response.fold(
      (l) => status = OperationStatus.failure(l),
      (r) => status = OperationStatus.success(r),
    );
  }

  @action
  Future<void> signIn(String email, String password) async {
    final response =
        await _authRepository.signInWithEmailAndPassword(email, password);
    return response.fold(
      (l) => status = OperationStatus.failure(l),
      (r) => status = OperationStatus.success(r),
    );
  }

  @action
  Future<void> logOut() async {
    await _authRepository.signOut();
  }
}
