import 'package:dartz/dartz.dart';

import '../../../domain/auth/repository/auth.dart';
import '../../../sevice_locator.dart';
import '../models/user_creation_req.dart';
import '../source/auth_firebase_service.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signUp(UserCreationReq user) {
    return sl<AuthFirebaseService>().signUp(user);
  }
}
