import 'package:flutter/material.dart';
class TextWidget extends StatefulWidget {
  final String text;
  const TextWidget({ Key? key, required  this.text }) : super(key: key);

  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.transparent,
      child: Center(
        child: Text(widget.text,softWrap: true,
        overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  shadows: [
                                    Shadow(
                                        offset: Offset(3, 3),
                                        color: Colors.black38,
                                        blurRadius: 10),
                                    Shadow(
                                        offset: Offset(-3, -3),
                                        color: Colors.white70,
                                        blurRadius: 10)
                                  ],
                                  color: Colors.white70),
                            ),
      ),
    );
  }
}