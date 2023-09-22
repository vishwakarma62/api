part of 'test_bloc.dart';

class TestState extends Equatable {
  const TestState();
  
  @override
  List<Object> get props => [];
}

final class TestInitial extends TestState {}
final class LoadState extends TestState {
  List<UserModel>  loaddata;
  LoadState({required this.loaddata});

    @override
  List<Object> get props => [loaddata];
}
