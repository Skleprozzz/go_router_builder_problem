import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashInitialState()) {
    on<GetConfig>((event, emit) async {
      // some async logic
      await Future<void>.delayed(Duration(seconds: 2));

      emit(const SplashLoadedState());
    });
  }
}
