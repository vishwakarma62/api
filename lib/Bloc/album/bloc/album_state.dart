part of 'album_bloc.dart';

sealed class AlbumState extends Equatable {
  const AlbumState();

  @override
  List<Object> get props => [];
}

final class AlbumLoading extends AlbumState {
  @override
  List<Object> get props => [];
}

final class AlbumLoaded extends AlbumState {
  List<AlbumModel> albumdata;
  AlbumLoaded({
    required this.albumdata,
  });
  @override
  List<Object> get props => [albumdata];
}

final class AlbumError extends AlbumState {
  final String error;

  AlbumError({required this.error});
  @override
  List<Object> get props => [error];
}
