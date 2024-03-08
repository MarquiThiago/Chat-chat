import 'package:chat_chat/common/domain/failure/failure.dart';
import 'package:chat_chat/features/auth/infrastructure/i_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  AuthRepository(this._auth);

  final FirebaseAuth _auth;

  @override
  Future<Either<Failure, UserCredential>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final response = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(response);
    } catch (e) {
      return left(const Failure.notFound());
    }
  }

  @override
  Future<Either<Failure, UserCredential>> signUpWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final response = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(response);
    } catch (e) {
      return left(const Failure.notFound());
    }
  }

  @override
  Future<void> signOut() {
    return _auth.signOut();
  }
}
