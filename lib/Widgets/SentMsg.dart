import 'package:flutter/material.dart';
class SentMsg extends StatefulWidget {
  const SentMsg({ Key? key }) : super(key: key);

  @override
  _SentMsgState createState() => _SentMsgState();
}

class _SentMsgState extends State<SentMsg> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:Alignment.centerLeft,
      child: Container( 
        margin: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width * 0.75, 
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade300,
            boxShadow: [
              BoxShadow(
                  offset: Offset(1, 1),
                  color: Colors.black38,
                  blurRadius: 1),
              BoxShadow(
                  offset: Offset(-1, -1),
                  color: Colors.white.withOpacity(0.85),
                  blurRadius: 1)
            ]),
        child: Material(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Hi"),
          ),
        ),
      ),
    );
  }
}