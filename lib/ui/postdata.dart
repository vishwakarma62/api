import 'package:api/Bloc/post/bloc/post_bloc.dart';
import 'package:api/widget/listtile%20copy%202.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/postmodel.dart';


class PostData extends StatefulWidget {
  const PostData({super.key});

  @override
  State<PostData> createState() => _PostDataState();
}

class _PostDataState extends State<PostData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(18),
        child: blocbody()),
    );
  }

  Widget blocbody() {
    return BlocBuilder<PostBloc, PostState>(builder: (context, state) {
      if (state is PostLoading) {
        return Center(child: CircularProgressIndicator());
      }

      if (state is PostLoaded) {
        List<PostModel> postlist = state.postdata;
        return ListView.separated(
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTileWidgetPost(
                data: postlist[index],
              );
            },
            separatorBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  height: 8,
                ),
              );
            },
            itemCount: postlist.length);
      }
      if (state is PostLoadingError) {
        final geterror = state as PostLoadingError;
        return Text("${geterror.error}");
      }
      return Container();
    });
  }
}
