import 'package:flutter/material.dart';
import 'package:flutter_clone_wx/constant/constants.dart';
import 'package:flutter_clone_wx/home/conversation/details/conversation_details.dart';
import 'package:flutter_clone_wx/home/home_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: Routes.Home,
      routes: {
        Routes.Home:(context) => HomeMain(),
        Routes.ConversationDetails:(context) => ConversationDetails()
      },
//      home: HomeMain(),
    );
  }
}
