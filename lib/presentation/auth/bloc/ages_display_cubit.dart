import 'package:ecom_app/presentation/auth/bloc/ages_display_state.dart';
import 'package:ecom_app/sevice_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/auth/usecases/get_age.dart';

class AgesDisplayCubit extends Cubit<AgesDisplayState> {
  AgesDisplayCubit() : super(AgesLoading());

  void displayAges() async {
    var returnedData = await sl<GetAgesUseCase>().call();
    returnedData.fold((message) {
      emit(AgesLoadFailure(message: message));
    }, (data) {
      emit(AgesLoaded(ages: data));
    });
  }
}
