import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:message_box/screens/Home.dart';

void main(){
  runApp(MainScreen());
}



class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
