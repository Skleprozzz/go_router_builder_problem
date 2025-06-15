import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashInitialState()) {
    on<GetConfig>((event, emit) async {
      Future<void>.delayed(Duration(seconds: 1));

      emit(const SplashLoadedState());
    });
  }
}
