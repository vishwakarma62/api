import 'package:flutter/material.dart';

import '../model/usermodel.dart';

class UserWidget extends StatefulWidget {
  UserWidget({super.key, required this.user});
  UserJsonModel user;

  @override
  State<UserWidget> createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(18),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Text(
                  "Name:-",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Text(
                  "${widget.user.name}",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Text(
                  "username:-",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Text(
                  "${widget.user.username}",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Text(
                  "email:-",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Text(
                  "${widget.user.email}",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Container(
            child: Text(
              "address:-",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            children: [
              Container(
                child: Text(
                  "street:-",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Text(
                  "${widget.user.address!.street}",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Text(
                  "suite:-",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Text(
                  "${widget.user.address!.suite}",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Text(
                  "city:-",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Text(
                  "${widget.user.address}",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Text(
                  "zipcode:-",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Text(
                  "${widget.user.address!.zipcode}",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Container(
            child: Text(
              "geo:-",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            children: [
              Container(
                child: Text(
                  "late:-",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Text(
                  "${widget.user.address!.geo!.lat}",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Text(
                  "lng:-",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Text(
                  "${widget.user.address!.geo!.lng}",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Text(
                  "website:-",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Text(
                  "${widget.user.website}",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Container(
            child: Text(
              "company:-",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            children: [
              Container(
                child: Text(
                  "name:-",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Text(
                  "${widget.user.company!.name}",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "catchPhrash:-",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Expanded(
                  child: Text(
                    "${widget.user.company!.catchPhrase}",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Text(
                  "bs:-",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Text(
                  "${widget.user.company!.bs}",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
