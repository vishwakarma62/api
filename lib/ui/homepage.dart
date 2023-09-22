import 'package:api/ui/pagelist.dart';
import 'package:api/widget/listtile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Bloc/homebloc/user_bloc.dart';
import '../model/model.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedpageindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: blocbody(),
    );
  }

  Widget blocbody() {
    return BlocBuilder<UserBloc, UserState>(builder: (context, state) {
      if (state is UserLoadingState) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      if (state is UserLoadedState) {
        List<UserModel> userlist = state.userdata;
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                    itemCount: userlist.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          context
                              .read<UserBloc>()
                              .add(UseritemEvent(item: userlist[index]));
                        },
                        child: ListTileWidget(
                          data: userlist[index],
                        ),
                      );
                    }),
              ],
            ),
          ),
        );
      }if(state is UserErrorState){
        final geterror=state as UserErrorState;
        return Text("${geterror.error}");
      }if(state is Interneterrorstate){
        return Text("Internet error");
      }
      return Container();
    });
  }
}
