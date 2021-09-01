import 'package:chatapp/Global/Constants.dart';
import 'package:chatapp/Widgets/ReceivedMsg.dart';
import 'package:chatapp/Widgets/SentMsg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  Constants constants = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ejaj Ahamed Laskar"),backgroundColor: Colors.grey.shade400,backwardsCompatibility: true,),
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints){
            return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width,
                minHeight:viewportConstraints.maxHeight,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  child: Column(
                    children: [SentMsg(), ReceivedMsg()],
                  ),
                ),
              ),
            ),
          );
          }
        ),
      ),
    );
  }
}
