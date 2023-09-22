// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_bloc.dart';
sealed class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class UserLoadingEvent extends UserEvent {
  @override
  List<Object> get props => [];
}
class UseritemEvent extends UserEvent {
  UserModel item;
  UseritemEvent({
    required this.item,
  });
  @override
  List<Object> get props => [];
}

class InterneterrorEvent extends UserEvent{}







