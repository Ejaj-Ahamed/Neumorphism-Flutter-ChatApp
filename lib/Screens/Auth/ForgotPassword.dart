import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({ Key? key }) : super(key: key);


  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width,
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                      fontSize: 35, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(10.0)),
                              Container(
                                height: 60,
                                margin: EdgeInsets.all(5),
                                width: MediaQuery.of(context).size.width * 0.95,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.grey.shade300,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black38,
                                          offset: Offset(10, 10),
                                          blurRadius: 10,
                                          spreadRadius: 0),
                                      BoxShadow(
                                          color: Colors.white.withOpacity(0.4),
                                          offset: Offset(-10, -10),
                                          blurRadius: 10,
                                          spreadRadius: 0)
                                    ]),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: 'Email',
                                          border: InputBorder.none,
                                          fillColor: Colors.black),
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ), 
                              Padding(padding: EdgeInsets.all(5.0)),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 60,
                                  margin: EdgeInsets.all(5),
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.grey.shade300,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black38,
                                            offset: Offset(10, 10),
                                            blurRadius: 10,
                                            spreadRadius: 0),
                                        BoxShadow(
                                            color: Colors.white.withOpacity(0.4),
                                            offset: Offset(-10, -10),
                                            blurRadius: 10,
                                            spreadRadius: 0),
                                      ],),
                                  child: Material(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.grey.shade300,
                                    child: Ink(
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(16),
                                        onTap: () {
                                          Get.toNamed("/OTPVerify");
                                          print("Forgot email send called");
                                        },
                                        child: Center(
                                          child: Text(
                                            "GET OPT",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(5.0)),                            
                              Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                  onTap: (){
                                    Get.back();
                                    print("Register call");
                                  },
                                  child: Text(
                                    'Already have account? Login',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black.withOpacity(0.6),
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(5.0)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}