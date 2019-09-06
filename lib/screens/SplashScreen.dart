import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    splashScreenTimer();
  }

  splashScreenTimer() async{
    Timer(Duration(seconds: 5,), navigatePage);
  }

  navigatePage(){
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(top:50.0, left: 50.0, right: 50.0),
            child: Stack(
              children: <Widget>[
                CustomPaint(
                  painter: childPainter(),
                ),
                CustomPaint(
                  painter: secondChildPainter(),
                ),
                CustomPaint(
                  painter: thirdChildPainter(),
                ),
                ListView(
                  children: <Widget>[
                    buildBottom(),
                    buildBottomText()],
                )
              ],
            ),
          )),
    );
  }

  buildBottom() {
    return Padding(
      padding: EdgeInsets.only(top: 450.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 60.0,
              height: 60.0,
              color: Colors.transparent,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        color: Color(0xff9B9B9B),
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                        color: Color(0xffffc80c),
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  Container(
                    width: 10.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                        color: Color(0xffC26A0B),
                        borderRadius: BorderRadius.circular(5.0)),
                  )
                ],
              ),
            ),
            Text(
              'Darrt',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xff161512)),
            )
          ],
        ),
      ),
    );
  }

  buildBottomText() {
    return Center(
      child: Text(
        'Lets achieve your target together',
        style: TextStyle(color: Color(0xff161512)),
      ),
    );
  }

}

// ignore: camel_case_types
class childPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Color(0xff9B9B9B);
    Offset offset = Offset(20.0, 0.0);
    canvas.drawCircle(offset, 325.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

// ignore: camel_case_types
class secondChildPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Color(0xffffc80c);

    Offset offset = Offset(20.0, 0.0);
    canvas.drawCircle(offset, 200.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}

// ignore: camel_case_types
class thirdChildPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Color(0xffC26A0B);
    Offset offset = Offset(20.0, 0.0);
    canvas.drawCircle(offset, 100.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
