import 'package:flutter/material.dart';

class ConduitWidget extends StatefulWidget {
  const ConduitWidget({super.key});

  @override
  State<ConduitWidget> createState() => _ConduitWidgetState();
}

class _ConduitWidgetState extends State<ConduitWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(""),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Anah .......",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.3),
                        ),
                        Text(
                          "date",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.3,
                              color: Colors.grey),
                        )
                      ],
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: Text(
                    "sgfffgnbbbbbbbbbbbbbbbbbbbbbbbbs",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: Text(
                    "sgfffgnbbbbbbbbbbbbbbbbbbbbbbbbs",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),
                  ),
                ),
                Row(
                  children: [
                    Spacer(),
                    Container(
                      width: 40,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("hicgggg"),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("hicgggg"),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("hicgg"),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("hicggggjk"),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(children: [
                  Icon(Icons.favorite,color: Colors.green,),
                  SizedBox(width: 10,),
                  Icon(Icons.message,color: Colors.grey,),
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
