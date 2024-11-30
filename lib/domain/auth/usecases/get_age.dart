import 'package:dartz/dartz.dart';
import 'package:ecom_app/core/usecase/usecase.dart';
import 'package:ecom_app/sevice_locator.dart';
import '../repository/auth.dart';

class GetAgesUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({dynamic params}) async {
    return await sl<AuthRepository>().getAges();
  }
}
