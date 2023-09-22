part of 'user_json_bloc.dart';

sealed class UserJsonEvent extends Equatable {
  const UserJsonEvent();

  @override
  List<Object> get props => [];
}
class UserJsonLoadingEvent extends UserJsonEvent{}
