import 'package:flutter/material.dart';

import 'package:hub/browsers.dart';
import 'package:hub/business.dart';

import 'package:hub/food.dart';
import 'package:hub/health.dart';
import 'package:hub/kids.dart';
import 'package:hub/knowledge.dart';
import 'package:hub/men.dart';
import 'package:hub/movie.dart';
import 'package:hub/photo.dart';
import 'package:hub/homedrew.dart';
import 'package:hub/shop.dart';
import 'package:hub/sports.dart';
import 'package:hub/student.dart';
import 'package:hub/tech.dart';
import 'package:hub/travel.dart';
import 'package:hub/women.dart';

class Selection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Color titleTextColor = Colors.white;
    //Color gradientEndColor = Color(0xFF9354B9);
    var sheight = MediaQuery.of(context).size.height;
    var swidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        //backgroundColor: gradientEndColor,
        appBar: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: new Container(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                new Text(
                  'THE HUB',
                  style: new TextStyle(
                    fontFamily: 'Apple',
                    fontSize: sheight / 30,
                  ),
                ),
                new SizedBox(
                  width: swidth / 80,
                ),
                new Image.asset(
                  'assets/crown.png',
                  height: sheight / 20,
                  color: Colors.white,
                  //width: swidth / 8,
                ),
              ],
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_sharp,
              size: sheight / 33,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: swidth / 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeDrew(),
                    ),
                  );
                },
                child: new Container(
                  //padding: EdgeInsets.only(left: 40.0, right: 40),
                  width: sheight / 29,
                  height: sheight / 29,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/drewp.jpg'),
                        fit: BoxFit.contain),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
              'https://images.pexels.com/photos/1658747/pexels-photo-1658747.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
            ),
            fit: BoxFit.cover,
          )),
          child: SafeArea(
            child: SingleChildScrollView(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /* new SizedBox(
                    height: sheight / 25,
                  ),
                  new Container(
                      child: new Text(
                    'It\'s all here  now!',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: sheight / 30,
                      color: titleTextColor,
                    ),
                  )),*/
                  new SizedBox(
                    height: sheight / 20,
                  ),
                  new Container(
                      padding: EdgeInsets.only(
                        left: sheight / 25,
                        right: sheight / 25,
                      ),
                      child: new Text(
                        'The HUB app contains all the top and useful websites and apps relevant to different streams at a single place to make searching very easy and simple for you.',
                        style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: sheight / 45,
                          color: Colors.white,
                        ),
                      )),
                  new SizedBox(
                    height: sheight / 25,
                  ),
                  new Container(
                      child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Text(
                        'Choose anything you like',
                        style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: sheight / 37,
                          color: Colors.white,
                        ),
                      ),
                      new SizedBox(
                        width: swidth / 50,
                      ),
                      new Icon(
                        Icons.check_box_rounded,
                        size: sheight / 25,
                        color: Colors.white,
                      ),
                    ],
                  )),
                  new SizedBox(
                    height: sheight / 2.9,
                  ),
                  new Container(
                    padding: EdgeInsets.only(
                      left: sheight / 25,
                      right: sheight / 25,
                    ),
                    child: new ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sports(),
                          ),
                        );
                      },
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            'Sports',
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              fontSize: sheight / 35,
                              color: Colors.white,
                            ),
                          ),
                          new SizedBox(
                            width: swidth / 35,
                          ),
                          new Image.asset(
                            'assets/sports.png',
                            height: sheight / 20,
                            //width: swidth / 8,
                          ),
                        ],
                      ),
                      style: (ElevatedButton.styleFrom(
                        primary: Colors.black,
                        elevation: 20,

                        //shadowColor: Colors.black,
                        padding: EdgeInsets.symmetric(
                          horizontal: sheight / 8,
                          vertical: sheight / 130,
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60.0),
                        ),
                      )),
                    ),
                  ),
                  new SizedBox(
                    height: sheight / 12,
                  ),
                  new Container(
                    padding: EdgeInsets.only(
                      left: sheight / 25,
                      right: sheight / 25,
                    ),
                    child: new ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Food(),
                          ),
                        );
                      },
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            'Food',
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              fontSize: sheight / 35,
                              color: Colors.black,
                            ),
                          ),
                          new SizedBox(
                            width: swidth / 35,
                          ),
                          new Image.asset(
                            'assets/food.png',
                            height: sheight / 20,
                            //width: swidth / 8,
                          ),
                        ],
                      ),
                      style: (ElevatedButton.styleFrom(
                        primary: Colors.yellowAccent,
                        elevation: 20,
                        padding: EdgeInsets.symmetric(
                          horizontal: sheight / 7.5,
                          vertical: sheight / 130,
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60.0),
                        ),
                      )),
                    ),
                  ),
                  new SizedBox(
                    height: sheight / 12,
                  ),
                  new Container(
                    padding: EdgeInsets.only(
                      left: sheight / 25,
                      right: sheight / 25,
                    ),
                    child: new ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Health(),
                          ),
                        );
                      },
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            'Health',
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              fontSize: sheight / 35,
                              color: Colors.black,
                            ),
                          ),
                          new SizedBox(
                            width: swidth / 35,
                          ),
                          new Image.asset(
                            'assets/health.png',
                            height: sheight / 20,
                            //width: swidth / 8,
                          ),
                        ],
                      ),
                      style: (ElevatedButton.styleFrom(
                        primary: Colors.greenAccent.shade400,
                        elevation: 20,
                        padding: EdgeInsets.symmetric(
                          horizontal: sheight / 8,
                          vertical: sheight / 130,
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60.0),
                        ),
                      )),
                    ),
                  ),
                  new SizedBox(
                    height: sheight / 12,
                  ),
                  new Container(
                    padding: EdgeInsets.only(
                      left: sheight / 25,
                      right: sheight / 25,
                    ),
                    child: new ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Browse(),
                          ),
                        );
                      },
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            'Browsers',
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              fontSize: sheight / 35,
                              color: Colors.black,
                            ),
                          ),
                          new SizedBox(
                            width: swidth / 35,
                          ),
                          new Image.asset(
                            'assets/browse.png',
                            height: sheight / 20,
                            //width: swidth / 8,
                          ),
                        ],
                      ),
                      style: (ElevatedButton.styleFrom(
                        primary: Colors.orangeAccent.shade400,
                        elevation: 20,
                        padding: EdgeInsets.symmetric(
                          horizontal: sheight / 9.5,
                          vertical: sheight / 130,
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60.0),
                        ),
                      )),
                    ),
                  ),
                  new SizedBox(
                    height: sheight / 12,
                  ),
                  new Container(
                    padding: EdgeInsets.only(
                      left: sheight / 25,
                      right: sheight / 25,
                    ),
                    child: new ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Business(),
                          ),
                        );
                      },
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            'Business',
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              fontSize: sheight / 35,
                              color: Colors.black,
                            ),
                          ),
                          new SizedBox(
                            width: swidth / 35,
                          ),
                          new Image.asset(
                            'assets/business.png',
                            height: sheight / 20,
                            //width: swidth / 8,
                          ),
                        ],
                      ),
                      style: (ElevatedButton.styleFrom(
                        primary: Colors.blueAccent.shade400,
                        elevation: 20,
                        padding: EdgeInsets.symmetric(
                          horizontal: sheight / 9.3,
                          vertical: sheight / 130,
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60.0),
                        ),
                      )),
                    ),
                  ),
                  new SizedBox(
                    height: sheight / 12,
                  ),
                  new Container(
                    padding: EdgeInsets.only(
                      left: sheight / 25,
                      right: sheight / 25,
                    ),
                    child: new ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Kid(),
                          ),
                        );
                      },
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            'Kids',
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              fontSize: sheight / 35,
                              color: Colors.black,
                            ),
                          ),
                          new SizedBox(
                            width: swidth / 35,
                          ),
                          new Image.asset(
                            'assets/kids.png',
                            height: sheight / 20,
                            //width: swidth / 8,
                          ),
                        ],
                      ),
                      style: (ElevatedButton.styleFrom(
                        primary: Colors.purpleAccent.shade400,
                        elevation: 20,
                        padding: EdgeInsets.symmetric(
                          horizontal: sheight / 7,
                          vertical: sheight / 130,
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60.0),
                        ),
                      )),
                    ),
                  ),
                  new SizedBox(
                    height: sheight / 12,
                  ),
                  new Container(
                    padding: EdgeInsets.only(
                      left: sheight / 25,
                      right: sheight / 25,
                    ),
                    child: new ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Know(),
                          ),
                        );
                      },
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            'Knowledge',
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              fontSize: sheight / 35,
                              color: Colors.black,
                            ),
                          ),
                          new SizedBox(
                            width: swidth / 35,
                          ),
                          new Image.asset(
                            'assets/knowledge.png',
                            height: sheight / 20,
                            //width: swidth / 8,
                          ),
                        ],
                      ),
                      style: (ElevatedButton.styleFrom(
                        primary: Colors.redAccent.shade400,
                        elevation: 20,
                        padding: EdgeInsets.symmetric(
                          horizontal: sheight / 10.8,
                          vertical: sheight / 130,
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60.0),
                        ),
                      )),
                    ),
                  ),
                  new SizedBox(
                    height: sheight / 12,
                  ),
                  new Container(
                    padding: EdgeInsets.only(
                      left: sheight / 25,
                      right: sheight / 25,
                    ),
                    child: new ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Men(),
                          ),
                        );
                      },
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            'Men',
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              fontSize: sheight / 35,
                              color: Colors.white,
                            ),
                          ),
                          new SizedBox(
                            width: swidth / 35,
                          ),
                          new Image.asset(
                            'assets/men.png',
                            height: sheight / 20,
                            //width: swidth / 8,
                          ),
                        ],
                      ),
                      style: (ElevatedButton.styleFrom(
                        primary: Colors.black,
                        elevation: 20,
                        padding: EdgeInsets.symmetric(
                          horizontal: sheight / 7,
                          vertical: sheight / 130,
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60.0),
                        ),
                      )),
                    ),
                  ),
                  new SizedBox(
                    height: sheight / 12,
                  ),
                  new Container(
                    padding: EdgeInsets.only(
                      left: sheight / 25,
                      right: sheight / 25,
                    ),
                    child: new ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Women(),
                          ),
                        );
                      },
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            'Women',
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              fontSize: sheight / 35,
                              color: Colors.black,
                            ),
                          ),
                          new SizedBox(
                            width: swidth / 35,
                          ),
                          new Image.asset(
                            'assets/women.png',
                            height: sheight / 20,
                            //width: swidth / 8,
                          ),
                        ],
                      ),
                      style: (ElevatedButton.styleFrom(
                        primary: Colors.orangeAccent.shade400,
                        elevation: 20,
                        padding: EdgeInsets.symmetric(
                          horizontal: sheight / 7.8,
                          vertical: sheight / 130,
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60.0),
                        ),
                      )),
                    ),
                  ),
                  new SizedBox(
                    height: sheight / 12,
                  ),
                  new Container(
                    padding: EdgeInsets.only(
                      left: sheight / 25,
                      right: sheight / 25,
                    ),
                    child: new ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Photo(),
                          ),
                        );
                      },
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            'Photography',
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              fontSize: sheight / 35,
                              color: Colors.black,
                            ),
                          ),
                          new SizedBox(
                            width: swidth / 35,
                          ),
                          new Image.asset(
                            'assets/photography.png',
                            height: sheight / 20,
                            //width: swidth / 8,
                          ),
                        ],
                      ),
                      style: (ElevatedButton.styleFrom(
                        primary: Colors.greenAccent.shade400,
                        elevation: 20,
                        padding: EdgeInsets.symmetric(
                          horizontal: sheight / 14,
                          vertical: sheight / 130,
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60.0),
                        ),
                      )),
                    ),
                  ),
                  new SizedBox(
                    height: sheight / 12,
                  ),
                  new Container(
                    padding: EdgeInsets.only(
                      left: sheight / 25,
                      right: sheight / 25,
                    ),
                    child: new ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Shop(),
                          ),
                        );
                      },
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            'Shopping',
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              fontSize: sheight / 35,
                              color: Colors.black,
                            ),
                          ),
                          new SizedBox(
                            width: swidth / 35,
                          ),
                          new Image.asset(
                            'assets/shopping.png',
                            height: sheight / 20,
                            //width: swidth / 8,
                          ),
                        ],
                      ),
                      style: (ElevatedButton.styleFrom(
                        primary: Colors.purpleAccent.shade400,
                        elevation: 20,
                        padding: EdgeInsets.symmetric(
                          horizontal: sheight / 10.5,
                          vertical: sheight / 130,
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60.0),
                        ),
                      )),
                    ),
                  ),
                  new SizedBox(
                    height: sheight / 12,
                  ),
                  new Container(
                    padding: EdgeInsets.only(
                      left: sheight / 25,
                      right: sheight / 25,
                    ),
                    child: new ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Student(),
                          ),
                        );
                      },
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            'Student',
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              fontSize: sheight / 35,
                              color: Colors.black,
                            ),
                          ),
                          new SizedBox(
                            width: swidth / 35,
                          ),
                          new Image.asset(
                            'assets/student.png',
                            height: sheight / 20,
                            //width: swidth / 8,
                          ),
                        ],
                      ),
                      style: (ElevatedButton.styleFrom(
                        primary: Colors.redAccent.shade400,
                        elevation: 20,
                        padding: EdgeInsets.symmetric(
                          horizontal: sheight / 8.6,
                          vertical: sheight / 130,
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60.0),
                        ),
                      )),
                    ),
                  ),
                  new SizedBox(
                    height: sheight / 12,
                  ),
                  new Container(
                    padding: EdgeInsets.only(
                      left: sheight / 25,
                      right: sheight / 25,
                    ),
                    child: new ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tech(),
                          ),
                        );
                      },
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            'Technology',
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              fontSize: sheight / 35,
                              color: Colors.white,
                            ),
                          ),
                          new SizedBox(
                            width: swidth / 35,
                          ),
                          new Image.asset(
                            'assets/tech.png',
                            height: sheight / 20,
                            //width: swidth / 8,
                          ),
                        ],
                      ),
                      style: (ElevatedButton.styleFrom(
                        primary: Colors.black,
                        elevation: 20,
                        padding: EdgeInsets.symmetric(
                          horizontal: sheight / 11,
                          vertical: sheight / 130,
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60.0),
                        ),
                      )),
                    ),
                  ),
                  new SizedBox(
                    height: sheight / 12,
                  ),
                  new Container(
                    padding: EdgeInsets.only(
                      left: sheight / 25,
                      right: sheight / 25,
                    ),
                    child: new ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Travel(),
                          ),
                        );
                      },
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            'Travel',
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              fontSize: sheight / 35,
                              color: Colors.black,
                            ),
                          ),
                          new SizedBox(
                            width: swidth / 35,
                          ),
                          new Image.asset(
                            'assets/travel.png',
                            height: sheight / 20,
                            //width: swidth / 8,
                          ),
                        ],
                      ),
                      style: (ElevatedButton.styleFrom(
                        primary: Colors.blueAccent.shade400,
                        elevation: 20,
                        padding: EdgeInsets.symmetric(
                          horizontal: sheight / 7.6,
                          vertical: sheight / 130,
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60.0),
                        ),
                      )),
                    ),
                  ),
                  new SizedBox(
                    height: sheight / 12,
                  ),
                  new Container(
                    padding: EdgeInsets.only(
                      left: sheight / 25,
                      right: sheight / 25,
                    ),
                    child: new ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Movie(),
                          ),
                        );
                      },
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            'Movie',
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              fontSize: sheight / 35,
                              color: Colors.black,
                            ),
                          ),
                          new SizedBox(
                            width: swidth / 35,
                          ),
                          new Image.asset(
                            'assets/movie.png',
                            height: sheight / 20,
                            //width: swidth / 8,
                          ),
                        ],
                      ),
                      style: (ElevatedButton.styleFrom(
                        primary: Colors.yellowAccent.shade400,
                        elevation: 20,
                        padding: EdgeInsets.symmetric(
                          horizontal: sheight / 8.5,
                          vertical: sheight / 130,
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60.0),
                        ),
                      )),
                    ),
                  ),
                  new SizedBox(
                    height: sheight / 12,
                  ),
                  /* new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 25,
                    right: sheight / 25,
                  ),
                  child: new ElevatedButton(
                    onPressed: () {},
                    child: new Row(
                      children: [
                        new Text(
                          'Sports',
                          style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white,
                          ),
                        ),
                        new SizedBox(
                          width: swidth / 35,
                        ),
                        new Image.asset(
                          'assets/sports.png',
                          height: sheight / 16,
                          //width: swidth / 8,
                        ),
                      ],
                    ),
                    style: (ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: EdgeInsets.symmetric(
                        horizontal: sheight / 6,
                        vertical: sheight / 130,
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(60.0),
                      ),
                    )),
                  ),
                ),
                new SizedBox(
                  height: sheight / 30,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 25,
                    right: sheight / 25,
                  ),
                  child: new ElevatedButton(
                    onPressed: () {},
                    child: new Row(
                      children: [
                        new Text(
                          'Sports',
                          style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white,
                          ),
                        ),
                        new SizedBox(
                          width: swidth / 35,
                        ),
                        new Image.asset(
                          'assets/sports.png',
                          height: sheight / 16,
                          //width: swidth / 8,
                        ),
                      ],
                    ),
                    style: (ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: EdgeInsets.symmetric(
                        horizontal: sheight / 6,
                        vertical: sheight / 130,
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(60.0),
                      ),
                    )),
                  ),
                ),
                new SizedBox(
                  height: sheight / 30,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 25,
                    right: sheight / 25,
                  ),
                  child: new ElevatedButton(
                    onPressed: () {},
                    child: new Row(
                      children: [
                        new Text(
                          'Sports',
                          style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white,
                          ),
                        ),
                        new SizedBox(
                          width: swidth / 35,
                        ),
                        new Image.asset(
                          'assets/sports.png',
                          height: sheight / 16,
                          //width: swidth / 8,
                        ),
                      ],
                    ),
                    style: (ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: EdgeInsets.symmetric(
                        horizontal: sheight / 6,
                        vertical: sheight / 130,
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(60.0),
                      ),
                    )),
                  ),
                ),
                new SizedBox(
                  height: sheight / 30,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 25,
                    right: sheight / 25,
                  ),
                  child: new ElevatedButton(
                    onPressed: () {},
                    child: new Row(
                      children: [
                        new Text(
                          'Sports',
                          style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white,
                          ),
                        ),
                        new SizedBox(
                          width: swidth / 35,
                        ),
                        new Image.asset(
                          'assets/sports.png',
                          height: sheight / 16,
                          //width: swidth / 8,
                        ),
                      ],
                    ),
                    style: (ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: EdgeInsets.symmetric(
                        horizontal: sheight / 6,
                        vertical: sheight / 130,
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(60.0),
                      ),
                    )),
                  ),
                ),*/
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
