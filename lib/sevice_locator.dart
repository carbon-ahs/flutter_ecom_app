import 'package:ecom_app/data/auth/repository/auth_repository_impl.dart';
import 'package:get_it/get_it.dart';

import 'data/auth/source/auth_firebase_service.dart';
import 'domain/auth/repository/auth.dart';
import 'domain/auth/usecases/sign_up_use_case.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Services
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  // Repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  // Usecases
  sl.registerSingleton<SignUpUseCase>(SignUpUseCase());
}
