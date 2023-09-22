import 'package:api/Bloc/homebloc/user_bloc.dart';
import 'package:api/Bloc/userjson/bloc/user_json_bloc.dart';
import 'package:api/model/usermodel.dart';
import 'package:api/widget/userwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserJsonBloc, UserJsonState>(
      builder: (context, state) {
        if (state is UserJsonLoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is UserJsonLoadedState) {
          List<UserJsonModel> userlist = state.userjsondata;
          return ListView.separated(
              itemBuilder: (context, index) {
                return UserWidget(
                  user: userlist[index],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 10,
                );
              },
              itemCount: userlist.length);
        }
        if (state is UserJsonError) {
          final geterror = state as UserJsonError;
          return Text("${geterror.userJsonError}");
        }
        return Container();
      },
    );
  }
}
