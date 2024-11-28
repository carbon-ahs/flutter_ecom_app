import 'package:dartz/dartz.dart';
import 'package:ecom_app/core/usecase/usecase.dart';
import 'package:ecom_app/sevice_locator.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../data/auth/models/user_creation_req.dart';
import '../repository/auth.dart';

class SignUpUseCase implements UseCase<Either, UserCreationReq> {
  @override
  Future<Either> call(UserCreationReq? params) async {
    return await sl<AuthRepository>().signUp(params!);
  }
}
