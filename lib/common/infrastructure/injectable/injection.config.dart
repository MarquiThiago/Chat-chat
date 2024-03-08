// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chat_chat/common/application/auth/auth_observer_cubit.dart'
    as _i8;
import 'package:chat_chat/common/infrastructure/firebase/firebase_injectable_module.dart'
    as _i9;
import 'package:chat_chat/features/auth/infrastructure/auth_repository.dart'
    as _i7;
import 'package:chat_chat/features/auth/infrastructure/i_auth_repository.dart'
    as _i6;
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseIjactableModule = _$FirebaseIjactableModule();
    gh.factory<_i3.FirebaseAuth>(() => firebaseIjactableModule.auth);
    gh.lazySingleton<_i4.FirebaseFirestore>(
        () => firebaseIjactableModule.firestore);
    gh.factory<_i5.FirebaseStorage>(() => firebaseIjactableModule.storage);
    gh.lazySingleton<_i6.IAuthRepository>(
        () => _i7.AuthRepository(gh<_i3.FirebaseAuth>()));
    gh.lazySingleton<_i8.AuthObserverCubit>(
        () => _i8.AuthObserverCubit(gh<_i6.IAuthRepository>()));
    return this;
  }
}

class _$FirebaseIjactableModule extends _i9.FirebaseIjactableModule {}
