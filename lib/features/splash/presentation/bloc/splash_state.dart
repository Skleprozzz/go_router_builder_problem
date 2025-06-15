part of 'splash_bloc.dart';

@immutable
sealed class SplashState {
  const SplashState();
}

@immutable
final class SplashInitialState extends SplashState {
  const SplashInitialState();
}

@immutable
final class SplashLoadingState extends SplashState {
  const SplashLoadingState();
}

@immutable
final class SplashLoadedState extends SplashState {
  const SplashLoadedState();
}
