import 'package:chatapp/Global/GlobalBindings.dart';
import 'package:chatapp/Screens/Auth/ForgotPassword.dart';
import 'package:chatapp/Screens/Auth/Login.dart';
import 'package:chatapp/Screens/Auth/NewPassword.dart';
import 'package:chatapp/Screens/Auth/OTPVerify.dart';
import 'package:chatapp/Screens/Auth/Register.dart';
import 'package:chatapp/Screens/Home/HomeView.dart';
import 'package:chatapp/Screens/Room/Chats.dart';
import 'package:flutter/material.dart'; 
import 'package:get/get.dart'; 

void main() {
  // setUrlStrategy(PathUrlStrategy());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: "/login", page: () => Login()),
        GetPage(name: "/register", page: () => Register()),
        GetPage(name: "/forgotPassword", page: () => ForgotPassword()),
        GetPage(name: "/OTPVerify", page: () => OTPVerify()),
        GetPage(name: "/NewPassword", page: () => NewPassword()),
        GetPage(name: "/home", page: () => HomeView()),
        GetPage(name: "/chats", page: () => Chats()),
        ],
      initialRoute: "/login",
      initialBinding: GlobalBindings(),
    );
  }
}
