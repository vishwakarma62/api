part of 'post_bloc.dart';

sealed class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

final class PostLoading extends PostState {
  @override
  List<Object> get props => [];
}

final class PostLoaded extends PostState {
  List<PostModel> postdata;
  PostLoaded({
    required this.postdata,
  });
  @override
  List<Object> get props => [postdata];
}

final class PostLoadingError extends PostState {
  final String error;

  PostLoadingError({required this.error});
  @override
  List<Object> get props => [error];
}
