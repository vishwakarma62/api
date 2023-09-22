part of 'conduit_bloc.dart';

sealed class ConduitState extends Equatable {
  const ConduitState();
  
  @override
  List<Object> get props => [];
}

final class ConduitLoadingState extends ConduitState {}
final class ConduitLoadedState extends ConduitState {}
final class ConduitErrorstate extends ConduitState {}