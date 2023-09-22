import 'package:api/Bloc/bloc/test_bloc.dart';
import 'package:api/model/itemmodel.dart';
import 'package:api/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Bloc/homebloc/user_bloc.dart';

class Pagelist extends StatefulWidget {
  Pagelist({
    super.key,
  });

  @override
  State<Pagelist> createState() => _PagelistState();
}

class _PagelistState extends State<Pagelist> {
  final TestBloc testBloc=TestBloc();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    testBloc.add(LoadDataEvent());
    

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<TestBloc, TestState>(
          builder: (context, state) {
           
    
           switch(state.runtimeType){
            case LoadState:
            final load=state as LoadState;
   
            return ListView.separated(
                      primary: false,
                      shrinkWrap: true,
                      //physics: ,
                      itemBuilder: (context, index) {
                                 UserModel model=load.loaddata[index];
                        return ListTile(
                          leading: Text("${model.firstName}"),
                          trailing: Text("${model.lastName}"),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Divider(
                            thickness: 2,
                            color: Colors.grey.withOpacity(.6),
                          ),
                        );
                      },
                      itemCount: load.loaddata.length);
    
                      default :
                      return SizedBox();
           }
          },
        ),
      ),
    );
  }
}
