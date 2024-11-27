import 'package:ecom_app/core/configs/theme/app_theme.dart';
import 'package:ecom_app/presentation/splash/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/splash/bloc/splash_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..appStarted(),
      child: MaterialApp(
        theme: AppTheme.appTheme,
        debugShowCheckedModeBanner: true,
        home: SplashPage(),
      ),
    );
  }
}
