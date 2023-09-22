part of 'photos_bloc.dart';

sealed class PhotosState extends Equatable {
  const PhotosState();

  @override
  List<Object> get props => [];
}

final class PhotosLoadedingState extends PhotosState {}

final class PhotosLoadedState extends PhotosState {
  List<PhotosModel> photodata;
PhotosLoadedState({required this.photodata});
@override
  List<Object> get props => [photodata];
}


final class PhotosLoadedError extends PhotosState {
 final String error;

  PhotosLoadedError({required this.error}); 
  @override
  List<Object> get props => [error];
}
