import 'package:flutter/material.dart';
import 'package:flutter_multiple_screen_prac/ScreenA.dart';
import 'package:flutter_multiple_screen_prac/ScreenB.dart';
import 'package:flutter_multiple_screen_prac/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', //home argurment //slash는 index.html과 비슷한 역할을 한다.
      routes: {
        '/' : (context) => ScreenA(),//slash가 불려지면 value값인 ScreenA 위젯이 빌드되어야한다는 의미
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC()
      },
    );
  }
}
