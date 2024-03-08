import 'package:chat_chat/common/domain/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepository {
  Future<Either<Failure, UserCredential>> signInWithEmailAndPassword(
      String email, String password);
  Future<Either<Failure, UserCredential>> signUpWithEmailAndPassword(
      String email, String password);
  Future<void> signOut();
}
