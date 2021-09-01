import 'package:chatapp/Global/Constants.dart';
import 'package:chatapp/Models/FriendListModel.dart';
import 'package:chatapp/Widgets/TextWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserWidget extends StatefulWidget {
  final FriendListModel friendListModel;
  const UserWidget({Key? key, required this.friendListModel}) : super(key: key);

  @override
  _UserWidgetState createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  Constants constants = Get.find();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80,
        margin: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width * 0.95, 
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey.shade300,
            boxShadow: [
              BoxShadow(
                  offset: Offset(10, 10),
                  color: Colors.black38,
                  blurRadius: 20),
              BoxShadow(
                  offset: Offset(-10, -10),
                  color: Colors.white.withOpacity(0.85),
                  blurRadius: 20)
            ]),
        child: Material(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(16),
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: (){
              print("object");
              Get.toNamed('/chats');
            },
            child: TextWidget(
              text: widget.friendListModel.friendsName.length>10?widget.friendListModel.friendsName:widget.friendListModel.friendsName,
            ),
          ),
        ),
      ),
    );
  }
}
