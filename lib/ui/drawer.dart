
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bottomnavigationbar.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({
    super.key,
  });

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

bool isSwitched = false;

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14),
              child: Container(
                color: Colors.green,
                child: Text(
                  "Online Data",
                  // ignore: deprecated_member_use
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return BottomNavigation(index: 0,);
                }));
              },
              child: ListTile(
                leading: const Icon(Icons.data_object),
                title: const Text("Home data"),
                trailing: Text(""),
              ),
            ),
            const Divider(),
            GestureDetector(
              onTap: () {
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return BottomNavigation(index: 1,);
                }));
              },
              child: ListTile(
                leading: const Icon(Icons.data_object),
                title: const Text("Album data"),
                trailing: Text(""),
              ),
            ),
            GestureDetector(
              onTap: () {
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return BottomNavigation(index: 2,);
                }));
              },
              child: ListTile(
                leading: const Icon(Icons.data_object),
                title: const Text("Post data"),
                trailing: Text(""),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: const Icon(Icons.data_object),
                title: const Text("Album data"),
                trailing: Text(""),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
