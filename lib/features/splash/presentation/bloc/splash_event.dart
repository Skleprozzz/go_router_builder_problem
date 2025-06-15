part of 'splash_bloc.dart';

sealed class SplashEvent {
  const SplashEvent();

  const factory SplashEvent.getConfig() = GetConfig;
}

final class GetConfig extends SplashEvent {
  const GetConfig();
}
