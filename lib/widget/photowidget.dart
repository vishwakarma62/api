import 'package:flutter/material.dart';

import '../model/PhotosModel.dart';

class PhotosWidget extends StatefulWidget {
  PhotosWidget({super.key, required this.data});
  PhotosModel data;

  @override
  State<PhotosWidget> createState() => _PhotosWidgetState();
}

class _PhotosWidgetState extends State<PhotosWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(offset: Offset(0, 2),
            blurRadius: 4,
            color: Colors.grey)
          ],
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage("${widget.data.thumbnailUrl}"),
                  ),
                  SizedBox(width: 5,),
                  Text("${widget.data.albumId}"),
                  Spacer(),
                  CircleAvatar(
                    backgroundImage: NetworkImage("${widget.data.url}"),
                  ),
                ],
              ),
              Text("${widget.data.title}"),
            ],
          ),
        ),
      ),
    );
  }
}
