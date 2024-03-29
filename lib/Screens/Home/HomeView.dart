import 'package:chatapp/Global/Constants.dart';
import 'package:chatapp/Models/FriendListModel.dart';
import 'package:chatapp/Widgets/UserWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isSearchEnabled = false;
  final searchController = TextEditingController();
  Constants constants = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Container(
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Colors.grey.shade400,
              width: 1.0,
            ),
          ),
          color: Colors.grey[350],
          ),
          margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          height: 60,
          child: Row(
            children: [
              Material(
                color: Colors.grey[350], // button color
                child: InkWell(
                  splashColor: Colors.grey.shade400, // inkwell color
                  child: SizedBox(
                      width: 56,
                      height: 56,
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 30.0,
                      )),
                  onTap: () {},
                ),
              ),
              Expanded(
                child: !isSearchEnabled
                    ? Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Chat App",
                          style: TextStyle(
                            fontSize: 20,
                            color: constants.getColorFromHex("#FFFFFF"),
                          ),
                        ),
                      )
                    : TextField(
                        controller: searchController,
                        style: TextStyle(fontSize: 18.0, color: Colors.black54),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                fontSize: 18.0, color: Colors.black54),
                            hintText: 'Enter User ID'),
                      ),
              ),
              Material(
                color: Colors.grey[350], // button color
                child: InkWell(
                  splashColor: Colors.grey.shade400, // inkwell color
                  child: SizedBox(
                      width: 56,
                      height: 56,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30.0,
                      )),
                  onTap: () {
                    setState(() {
                      if (searchController.text.toString().isNotEmpty) {
                        print(searchController.text.toString());
                        searchController.text = "";
                        isSearchEnabled = !isSearchEnabled;
                      } else {
                        isSearchEnabled = !isSearchEnabled;
                      }
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width,
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 10; i++)
                        UserWidget(
                          friendListModel: new FriendListModel(
                              false,
                              "9062544370",
                              "Ejaj Ahamed Laskar",
                              "fcmToken",
                              "uniqueUserID"),
                        )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
