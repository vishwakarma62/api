// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_bloc.dart';

sealed class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserActioState extends UserState {
  @override
  List<Object> get props => [];
}

class UserLoadingState extends UserState {
  @override
  List<Object> get props => [];
}

class UserLoadedState extends UserState {
  List<UserModel> userdata;
  UserLoadedState({
    required this.userdata,
  });

  @override
  List<Object> get props => [userdata];
}



class UserErrorState extends UserState {
  final String error;
  UserErrorState({
    required this.error,
  });
 

  @override
  List<Object> get props => [error];
}
class Interneterrorstate extends UserState{}
