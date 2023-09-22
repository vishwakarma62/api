// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:api/repo/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:api/model/albummodel.dart';



part 'album_event.dart';
part 'album_state.dart';

class AlbumBloc extends Bloc<AlbumEvent, AlbumState> {
  AlbumRepository albumrepository;
  AlbumBloc(
    {required this.albumrepository,}
  ) : super(AlbumLoading()) {
    on<albumLoadingevents>((event, emit) async {
      emit(AlbumLoading());
      try {
        final albums = await albumrepository.fetchData();
        emit(AlbumLoaded(albumdata: albums));
    
      } catch (e) {
        print(e);
        emit(AlbumError(error: e.toString()));
      }
    });
  }
}
