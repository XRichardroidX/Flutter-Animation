import 'package:flutter/material.dart';
import 'animated_widget_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '1st Flutter Animation Lesson',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: AnimationPage(),
    );
  }
}
