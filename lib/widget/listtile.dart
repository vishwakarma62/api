import 'package:flutter/material.dart';

import '../model/model.dart';

class ListTileWidget extends StatefulWidget {
 ListTileWidget({super.key,required this.data});
  UserModel data;

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).canvasColor,
      child: ListTile(
        title: Text("${widget.data.firstName} ${widget.data.lastName}"),
        subtitle: Text("${widget.data.email}"),
        leading: CircleAvatar(
          backgroundImage: NetworkImage("${widget.data.avatar}"),
        ),
      ),
    );
  }
}
