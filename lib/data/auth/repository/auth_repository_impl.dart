import 'package:dartz/dartz.dart';

import '../../../domain/auth/repository/auth.dart';
import '../../../sevice_locator.dart';
import '../models/user_creation_req.dart';
import '../source/auth_firebase_service.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signUp(UserCreationReq user) async {
    return await sl<AuthFirebaseService>().signUp(user);
  }

  @override
  Future<Either> getAges() async {
    return await sl<AuthFirebaseService>().getAges();
  }
}
