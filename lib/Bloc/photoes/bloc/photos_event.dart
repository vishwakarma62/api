part of 'photos_bloc.dart';

sealed class PhotosEvent extends Equatable {
  const PhotosEvent();

  @override
  List<Object> get props => [];
}
class PhotosLoadedingEvent extends PhotosEvent{
   @override
  List<Object> get props => [];
}