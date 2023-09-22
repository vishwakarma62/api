import 'package:api/model/albummodel.dart';
import 'package:flutter/material.dart';

import '../model/model.dart';

class ListTileWidgetAlbum extends StatefulWidget {
  ListTileWidgetAlbum({super.key, required this.data});
  AlbumModel data;

  @override
  State<ListTileWidgetAlbum> createState() => _ListTileWidgetAlbumState();
}

class _ListTileWidgetAlbumState extends State<ListTileWidgetAlbum> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      child: ListTile(
        leading: Text(
          "title:",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        title: RichText(
            text: TextSpan(
                text: "${widget.data.title}",
                style: TextStyle(color: Colors.black))),
      ),
    );
  }
}
