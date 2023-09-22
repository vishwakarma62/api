// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_json_bloc.dart';

sealed class UserJsonState extends Equatable {
  const UserJsonState();

  @override
  List<Object> get props => [];
}

class UserJsonLoadingState extends UserJsonState {}

class UserJsonLoadedState extends UserJsonState {
  List<UserJsonModel> userjsondata;
  UserJsonLoadedState({
    required this.userjsondata,
  });
  @override
  List<Object> get props => [userjsondata];
}

class UserJsonError extends UserJsonState {
  final String userJsonError;
  UserJsonError({
    required this.userJsonError,
  });
  @override
  List<Object> get props => [userJsonError];
}
