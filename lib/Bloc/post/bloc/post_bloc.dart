// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:api/repo/repository.dart';

import '../../../model/PhotosModel.dart';
import '../../../model/postmodel.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostRepository postRepository;
  PostBloc(
    this.postRepository,
  ) : super(PostLoading()) {
    on<PostLoadingEvent>((event, emit)async {
    emit(PostLoading());
      try {
        final posts = await postRepository.fetchData();
        emit(PostLoaded(postdata: posts));
    
      } catch (e) {
        print(e);
        emit(PostLoadingError(error: e.toString()));
      }
    });
  }
}
