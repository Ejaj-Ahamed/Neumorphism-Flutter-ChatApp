import 'package:flutter/material.dart';
class ReceivedMsg extends StatefulWidget {
  const ReceivedMsg({ Key? key }) : super(key: key);

  @override
  _ReceivedMsgState createState() => _ReceivedMsgState();
}

class _ReceivedMsgState extends State<ReceivedMsg> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:Alignment.centerRight,
      child: Container( 
        margin: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width * 0.75, 
        alignment: Alignment.centerRight,
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
            child: Align(alignment: Alignment.centerRight, child: Text("Hi")),
          ),
        ),
      ),
    );
  }
}