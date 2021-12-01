// @dart=2.9
import 'dart:async';

import 'package:flutter/material.dart';
import 'homedrew.dart';

import 'package:hub/selection.dart';


void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HubApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

/*class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => HubApp())));
  }

  @override
  Widget build(BuildContext context) {
    var sheight = MediaQuery.of(context).size.height;
    var swidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.redAccent.shade700,
      body: Center(
        child: Image.asset(
          'assets/launch_image.png',
          height: sheight / 4,
        ),
      ),
    );
  }
}*/

class HubApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sheight = MediaQuery.of(context).size.height;
    var swidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Container(
                height: sheight / 1.6,
                width: swidth,
                child: Image.asset(
                  'assets/home.png',
                ),
              ),
              new Container(
                padding:
                    EdgeInsets.only(right: sheight / 8, left: sheight / 6.5),
                height: sheight / 5,
                //  width: swidth / 3,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Container(
                      child: new Text(
                        'Hub',
                        style: new TextStyle(
                            fontSize: sheight / 19,
                            fontFamily: 'Apple',
                            color: Colors.black),
                      ),
                    ),
                    new Container(
                      child: new Image.asset(
                        'assets/hicon.png',
                        height: sheight / 10,
                        width: swidth / 5,
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                alignment: Alignment.center,
                height: sheight / 45,
                width: swidth,
                child: new Text(
                  'Everything at one place',
                  style: new TextStyle(
                      fontSize: swidth / 20,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Apple',
                      color: Colors.purple),
                ),
              ),
              SizedBox(
                height: sheight / 22,
              ),
              new Container(
                child: new Row(
                  children: [
                    new Container(
                      padding: EdgeInsets.only(left: sheight / 110),
                      child: new GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeDrew(),
                            ),
                          );
                        },
                        child: new Container(
                          //padding: EdgeInsets.only(right: sheight / 20),
                          width: swidth / 13,
                          height: sheight / 19,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/drewp.jpg'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: swidth / 1.7,
                    ),
                    new Container(
                      child: new TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Selection(),
                            ),
                          );
                        },
                        child: new Row(
                          children: [
                            new Text("Let's Start",
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: sheight / 39,
                                    color: Colors.blue,
                                    fontFamily: 'Apple')),
                            new SizedBox(
                              width: swidth / 120,
                            ),
                            new Icon(Icons.arrow_forward_ios,
                                size: swidth / 20, color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
