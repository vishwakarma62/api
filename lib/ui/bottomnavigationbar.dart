import 'dart:ffi';

import 'package:api/ui/pagelist.dart';
import 'package:api/ui/photos.dart';
import 'package:api/ui/postdata.dart';
import 'package:api/ui/userui.dart';

import 'package:flutter/material.dart';

import 'album.dart';
import 'drawer.dart';
import 'homepage.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({super.key, required this.index});
  var index;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final List<Map<String, dynamic>> _Pagedetails = [
    {'pageName': const HomePage(), 'title': 'HomePage data'},
    {'pageName': const AlbumData(), 'title': 'Album data'},
    {'pageName': const PostData(), 'title': 'Post data'},
    {'pageName': const Photos(), 'title': 'Photos data'},
    {'pageName': const UserPage(), 'title': 'User data'},
  ];
  List<Map<String, dynamic>> colorlist = [
    {'color': Colors.red},
    {'color': Colors.green},
    {'color': Colors.greenAccent},
    {'color': Colors.orange},
    {'color': Colors.teal}
  ];
  List<Map<String, dynamic>> colorlist2 = [
    {'color': Colors.orange},
    {'color': Colors.greenAccent},
    {'color': Colors.green},
    {'color': Colors.red},
    {'color': Colors.primaries}
  ];

  List<BottomNavigationBarItem> _buildFourItems() {
    return const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
        backgroundColor: Colors.red,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search_rounded),
        label: 'Search',
        backgroundColor: Colors.blue,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_box_outlined),
        label: 'Profile',
        backgroundColor: Colors.green,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_box_outlined),
        label: 'Settings',
        backgroundColor: Colors.yellow,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_box_outlined),
        label: 'Settings',
        backgroundColor: Colors.yellow,
      ),
    ];
  }

  @override
  void initState() {
    setState(() {
      _selectedpageindex = widget.index;
    });
    super.initState();
  }

  List<String> list = [
    "HomePage",
    "album",
    "Post",
    "Photos",
    "User",
    "Conduit data"
  ];

  var _selectedpageindex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: _selectedpageindex,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(splashFactory:  InkRipple.splashFactory,
              splashBorderRadius: BorderRadius.all(Radius.circular(20)),
              onTap: (value) {
                setState(() {
                  _selectedpageindex = value;
                });
              },
              isScrollable: true,
              tabs: [
                Text("HomePag"),
                Text("Album"),
                Text("Post"),
                Text("Photos"),
                Text("User"),
              ]),
          title: Text(_Pagedetails[_selectedpageindex]['title']),
        ),
        body: _Pagedetails[_selectedpageindex]['pageName'],
        drawer: DrawerPage(),
        // bottomNavigationBar: Container(
        //   decoration: BoxDecoration(),
        //   height: 60,
        //   child: ListView.separated(
        //       separatorBuilder: (context, index) {
        //         return SizedBox(
        //           width: 5,
        //         );
        //       },
        //       shrinkWrap: true,
        //       primary: false,
        //       scrollDirection: Axis.horizontal,
        //       itemCount: list.length,
        //       itemBuilder: (context, index) {
        //         return InkWell(
        //           highlightColor: Colors.transparent,
        //           splashFactory: NoSplash.splashFactory,
        //           onTap: () {
        //             setState(() {
        //               _selectedpageindex = index;
        //             });
        //           },
        //           child: Container(
        //             width: 90,
        //             height: 40,
        //             decoration: BoxDecoration(
        //               color: _selectedpageindex == index
        //                   ? colorlist[_selectedpageindex]['color']
        //                   : null,
        //               borderRadius: BorderRadius.circular(25),
        //             ),
        //             child: Center(
        //               child: Text(
        //                 "${list[index]}",
        //                 style: TextStyle(
        //                     fontSize: 16, fontWeight: FontWeight.bold),
        //               ),
        //             ),
        //           ),
        //         );
        //       }),
        // )
      ),
    );
  }
}
