import 'package:dartz/dartz.dart';

import '../../../domain/auth/repository/auth.dart';
import '../models/user_creation_req.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signUp(UserCreationReq user) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
