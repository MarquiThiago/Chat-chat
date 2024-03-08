import 'package:chat_chat/common/domain/failure/failure.dart';
import 'package:chat_chat/features/auth/infrastructure/i_auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_observer_cubit.freezed.dart';
part 'auth_observer_state.dart';

@LazySingleton()
class AuthObserverCubit extends Cubit<AuthObserverState> {
  AuthObserverCubit(this._authRepository)
      : super(const AuthObserverState.initial());

  final IAuthRepository _authRepository;

  Future<void> checkAuthStatus() async {}
}
