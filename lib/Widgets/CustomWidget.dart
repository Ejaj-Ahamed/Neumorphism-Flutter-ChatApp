import 'package:chatapp/Models/CustomWidgetModel.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatefulWidget {
  final CustomWidgetModel customWidgetModel;
  const CustomWidget({Key? key, required this.customWidgetModel})
      : super(key: key);

  @override
  _CustomWidgetState createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: widget.customWidgetModel.height,
        margin: EdgeInsets.all(5),
        width: widget.customWidgetModel.width,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.customWidgetModel.borderRadius),
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
        child: widget.customWidgetModel.childWidget,
      ),
    );
  }
}
