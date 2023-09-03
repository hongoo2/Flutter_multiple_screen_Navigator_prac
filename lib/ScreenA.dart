import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen A'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(child: Text('Go to Screen B'), style: ElevatedButton.styleFrom(
              onPrimary: Colors.yellowAccent
            ),onPressed: (){
              Navigator.pushNamed(context, '/b'); //context는 A의 context
            }
            ),
            ElevatedButton(style:ElevatedButton.styleFrom(
              onPrimary: Colors.yellowAccent
            ), child: Text('Go to Screen C'), onPressed: (){
              Navigator.pushNamed(context, '/c');
            })
          ],
        ),
      ),
    );
  }
}
