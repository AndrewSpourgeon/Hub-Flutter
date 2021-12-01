import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hub/menu.dart';
import 'package:hub/selection.dart';
import 'package:url_launcher/url_launcher.dart';

class Food extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FoodState();
  }
}

class FoodState extends State<Food> {
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.yellow,
      //statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    var sheight = MediaQuery.of(context).size.height;
    //  var swidth = MediaQuery.of(context).size.width;
    return MaterialApp(
        home: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: ElevatedButton(
          child: Icon(
            Icons.menu_sharp,
            color: Colors.yellowAccent,
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.transparent, elevation: 0.0),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Menu(),
              ),
            );
            //MenuState();
          },
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Selection(),
                  ),
                );
              },
              child: Icon(
                Icons.home_sharp,
                size: 26.0,
                color: Colors.yellowAccent,
              ),
            ),
          ),
        ],
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              'Food',
              style: new TextStyle(
                fontFamily: 'Apple',
                fontSize: 25,
                color: Colors.yellowAccent,
              ),
            ),
            new SizedBox(
              width: sheight / 90,
            ),
            new Image.asset(
              'assets/food.png',
              height: sheight / 18,
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1592815075362-113703faaa2b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80',
          ),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
          child: SingleChildScrollView(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new SizedBox(
                  height: sheight / 20,
                ),
                new Container(
                  child: new Image.asset(
                    'assets/ifood.png',
                    height: sheight / 5,
                  ),
                ),
                new SizedBox(
                  height: sheight / 20,
                ),
                new Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Icon(
                        Icons.info_outline,
                        size: sheight / 35,
                        color: Colors.yellow.shade600,
                      ),
                      new SizedBox(
                        width: sheight / 100,
                      ),
                      new Text(
                        'Click on web icon to visit the website',
                        style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 45,
                            color: Colors.yellow.shade600),
                      )
                    ],
                  ),
                ),
                new SizedBox(
                  height: sheight / 10,
                ),
                new Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Text(
                        '1.Swiggy',
                        style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://www.swiggy.com/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                new SizedBox(
                  height: sheight / 30,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 40,
                    right: sheight / 40,
                  ),
                  child: new Text(
                    'Probably Well known to all the bachelors and food lovers.To people who dont know we can not only order food from restuarant but also fresh fruits and vegetables here.In fact prices of food items Swiggy menu are 25 to 50 per cent more than actual price of the same at restaurant.',
                    style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white),
                  ),
                ),
                new SizedBox(
                  height: sheight / 25,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 13,
                    right: sheight / 13,
                  ),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new ElevatedButton(
                        onPressed: () {
                          launch(
                              'https://play.google.com/store/apps/details?id=in.swiggy.android');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/play.png',
                              height: sheight / 35,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'Play Store',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                      new SizedBox(
                        height: sheight / 25,
                      ),
                      new ElevatedButton(
                        onPressed: () {
                          launch(
                              'https://apps.apple.com/in/app/swiggy-food-order-delivery/id989540920');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/apple.png',
                              height: sheight / 30,
                              color: Colors.white,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'App Store',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                new Divider(
                  color: Colors.yellow,
                  height: sheight / 8,
                  thickness: 2.0,
                ),
                /*



            */
                new Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Text(
                        '2.Zomato',
                        style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://www.zomato.com/ncr');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                new SizedBox(
                  height: sheight / 30,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 40,
                    right: sheight / 40,
                  ),
                  child: new Text(
                    'Best for offers.In fact zomato only concentrates on food food food.',
                    style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white),
                  ),
                ),
                new SizedBox(
                  height: sheight / 25,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 13,
                    right: sheight / 13,
                  ),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new ElevatedButton(
                        onPressed: () {
                          launch(
                              'https://play.google.com/store/apps/details?id=com.application.zomato');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/play.png',
                              height: sheight / 35,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'Play Store',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                      new SizedBox(
                        height: sheight / 25,
                      ),
                      new ElevatedButton(
                        onPressed: () {
                          launch(
                              'https://apps.apple.com/in/app/zomato-food-delivery-dining/id434613896');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/apple.png',
                              height: sheight / 30,
                              color: Colors.white,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'App Store',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                new Divider(
                  color: Colors.yellow,
                  height: sheight / 8,
                  thickness: 2.0,
                ),
                /*



            */
                new Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Text(
                        '3.CookPad',
                        style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://cookpad.com/in');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                new SizedBox(
                  height: sheight / 30,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 40,
                    right: sheight / 40,
                  ),
                  child: new Text(
                    'Best and top website to learn millions of recepies with just one click.Although we have youtube to learn cooking this website makes cooking more easy and handy by providing you simple steps and images.Create and share your own recipes and help others to become better cooks.Check this once , you will definitely like it.',
                    style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white),
                  ),
                ),
                new SizedBox(
                  height: sheight / 25,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 13,
                    right: sheight / 13,
                  ),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new ElevatedButton(
                        onPressed: () {
                          launch(
                              'https://play.google.com/store/apps/details?id=com.mufumbo.android.recipe.search');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/play.png',
                              height: sheight / 35,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'Play Store',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                      new SizedBox(
                        height: sheight / 25,
                      ),
                      new ElevatedButton(
                        onPressed: () {
                          launch(
                              'https://apps.apple.com/in/app/cookpad-recipe-sharing/id585332633');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/apple.png',
                              height: sheight / 30,
                              color: Colors.white,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'App Store',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                new Divider(
                  color: Colors.yellow,
                  height: sheight / 8,
                  thickness: 2.0,
                ),
                /*



            */
                new Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Text(
                        '4.TheKitchn',
                        style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://www.thekitchn.com/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                new SizedBox(
                  height: sheight / 30,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 40,
                    right: sheight / 40,
                  ),
                  child: new Text(
                    'This web gives shows you the best recipes from all over the world.Worried about what to cook on a holiday or an occassion ? Dont worry this app helps you with relevant recipes according the day and occasion.Helps you make a tasty holiday :)',
                    style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white),
                  ),
                ),
                new SizedBox(
                  height: sheight / 25,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 13,
                    right: sheight / 13,
                  ),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new ElevatedButton(
                        onPressed: () {
                          launch('https://www.thekitchn.com/');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/play.png',
                              height: sheight / 35,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'Play Store',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                      new SizedBox(
                        height: sheight / 25,
                      ),
                      new ElevatedButton(
                        onPressed: () {
                          launch('https://www.thekitchn.com/');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/apple.png',
                              height: sheight / 30,
                              color: Colors.white,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'App Store',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                new Divider(
                  color: Colors.yellow,
                  height: sheight / 8,
                  thickness: 2.0,
                ),
                /*



            */
                new Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Text(
                        '5.Food',
                        style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://www.mlb.com/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                new SizedBox(
                  height: sheight / 30,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 40,
                    right: sheight / 40,
                  ),
                  child: new Text(
                    'So if you’re hungry for good food and great conversation with fellow cooks, this the place for you.This web holds all the recipes from newest to trending ones. ',
                    style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white),
                  ),
                ),
                new SizedBox(
                  height: sheight / 25,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 13,
                    right: sheight / 13,
                  ),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new ElevatedButton(
                        onPressed: () {
                          launch('https://www.food.com/');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/play.png',
                              height: sheight / 35,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'Play Store',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                      new SizedBox(
                        height: sheight / 25,
                      ),
                      new ElevatedButton(
                        onPressed: () {
                          launch('https://www.food.com/');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/apple.png',
                              height: sheight / 30,
                              color: Colors.white,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'App Store',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                new Divider(
                  color: Colors.yellow,
                  height: sheight / 8,
                  thickness: 2.0,
                ),
                /*



            */
                new Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Text(
                        '6.Tasty',
                        style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://tasty.co/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                new SizedBox(
                  height: sheight / 30,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 40,
                    right: sheight / 40,
                  ),
                  child: new Text(
                    'You can learn many recipies with less than 5 ingredients.Fun and easy-peasy.',
                    style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white),
                  ),
                ),
                new SizedBox(
                  height: sheight / 25,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 13,
                    right: sheight / 13,
                  ),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new ElevatedButton(
                        onPressed: () {
                          launch(
                              'https://play.google.com/store/apps/details?id=com.buzzfeed.tasty');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/play.png',
                              height: sheight / 35,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'Play Store',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                      new SizedBox(
                        height: sheight / 25,
                      ),
                      new ElevatedButton(
                        onPressed: () {
                          launch(
                              'https://apps.apple.com/in/app/tasty/id1217456898');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/apple.png',
                              height: sheight / 30,
                              color: Colors.white,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'App Store',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                new Divider(
                  color: Colors.yellow,
                  height: sheight / 8,
                  thickness: 2.0,
                ),
                /*



            */
                new Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Text(
                        '7.Kitchen Stories',
                        style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://www.kitchenstories.com/en');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                new SizedBox(
                  height: sheight / 30,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 40,
                    right: sheight / 40,
                  ),
                  child: new Text(
                    'Millions of users around the world are already cooking with Kitchen Stories, the winner of Apple’s Design Award. Become a kitchen pro with instructional videos and skill tutorials. Use the measurement converter to easily adapt ingredient measurements according to serving size servings',
                    style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white),
                  ),
                ),
                new SizedBox(
                  height: sheight / 25,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 13,
                    right: sheight / 13,
                  ),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new ElevatedButton(
                        onPressed: () {
                          launch(
                              'https://play.google.com/store/apps/details?id=com.ajnsnewmedia.kitchenstories');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/play.png',
                              height: sheight / 35,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'Play Store',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                      new SizedBox(
                        height: sheight / 25,
                      ),
                      new ElevatedButton(
                        onPressed: () {
                          launch(
                              'https://apps.apple.com/in/app/kitchen-stories-recipes/id771068291');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/apple.png',
                              height: sheight / 30,
                              color: Colors.white,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'App Store',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                new Divider(
                  color: Colors.yellow,
                  height: sheight / 8,
                  thickness: 2.0,
                ),
                /*



            */
                new Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Text(
                        '8.Vegan Recipes',
                        style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://www.veganrecipes.com/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                new SizedBox(
                  height: sheight / 30,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 40,
                    right: sheight / 40,
                  ),
                  child: new Text(
                    'All recipes use simple ingredients that are easily available and inexpensive.Contains complete nutrition data for all recipes.All recipes in the app – no Internet connection required.',
                    style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white),
                  ),
                ),
                new SizedBox(
                  height: sheight / 25,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 13,
                    right: sheight / 13,
                  ),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new ElevatedButton(
                        onPressed: () {
                          launch('https://www.veganrecipes.com/');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/play.png',
                              height: sheight / 35,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'Play Store',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                      new SizedBox(
                        height: sheight / 25,
                      ),
                      new ElevatedButton(
                        onPressed: () {
                          launch(
                              'https://apps.apple.com/in/app/vegan-recipes-tasty-food/id1298425519');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/apple.png',
                              height: sheight / 30,
                              color: Colors.white,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'App Store',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                new Divider(
                  color: Colors.yellow,
                  height: sheight / 8,
                  thickness: 2.0,
                ),
                /*



            */
                new Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Text(
                        '9.Meal Planner',
                        style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://meal.com/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                new SizedBox(
                  height: sheight / 30,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 40,
                    right: sheight / 40,
                  ),
                  child: new Text(
                    'Meal planning is an important part of every day family life. Meal planner helps you stay organised with what to prepare and cook each day.Meal planning is an important part of every day family life. Meal planner helps you stay organised with what to prepare and cook each day.',
                    style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white),
                  ),
                ),
                new SizedBox(
                  height: sheight / 25,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 13,
                    right: sheight / 13,
                  ),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new ElevatedButton(
                        onPressed: () {
                          launch('https://meal.com/');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/play.png',
                              height: sheight / 35,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'Play Store',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                      new SizedBox(
                        height: sheight / 25,
                      ),
                      new ElevatedButton(
                        onPressed: () {
                          launch(
                              'https://apps.apple.com/in/app/meal-planner-healthy-eating/id1249624402');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/apple.png',
                              height: sheight / 30,
                              color: Colors.white,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'App Store',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                new Divider(
                  color: Colors.yellow,
                  height: sheight / 8,
                  thickness: 2.0,
                ),
                /*



            */
                new Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Text(
                        '10.Yummly',
                        style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://www.yummly.com/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                new SizedBox(
                  height: sheight / 30,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 40,
                    right: sheight / 40,
                  ),
                  child: new Text(
                    'Best one for international travlers where you can find out your favourite cuisines at desired restuarants according to the country.Not only eating but also a great platform to learn all the tasty recipes from pro\'s.',
                    style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white),
                  ),
                ),
                new SizedBox(
                  height: sheight / 25,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 13,
                    right: sheight / 13,
                  ),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new ElevatedButton(
                        onPressed: () {
                          launch(
                              'https://play.google.com/store/apps/details?id=com.yummly.android&referrer=utm_source%3Dyummly%26utm_medium%3Dwebsite%26utm_campaign%3Dmobile_page%26ts%3D64a0ad8d-d59f-11eb-9567-002590a28fc7');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/play.png',
                              height: sheight / 35,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'Play Store',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                      new SizedBox(
                        height: sheight / 25,
                      ),
                      new ElevatedButton(
                        onPressed: () {
                          launch(
                              'https://apps.apple.com/us/app/yummly-recipes-grocery-shopping/id589625334');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/apple.png',
                              height: sheight / 30,
                              color: Colors.white,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'App Store',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                new Divider(
                  color: Colors.yellow,
                  height: sheight / 8,
                  thickness: 2.0,
                ),
                /*



            */
                new Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Text(
                        '11.A Perfect plate',
                        style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://aperfectplate.co/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                new SizedBox(
                  height: sheight / 30,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 40,
                    right: sheight / 40,
                  ),
                  child: new Text(
                    'Book a Chef.Suggest.Relax.',
                    style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white),
                  ),
                ),
                new SizedBox(
                  height: sheight / 25,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 13,
                    right: sheight / 13,
                  ),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new ElevatedButton(
                        onPressed: () {
                          launch('https://aperfectplate.co/');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/play.png',
                              height: sheight / 35,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'Play Store',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                      new SizedBox(
                        height: sheight / 25,
                      ),
                      new ElevatedButton(
                        onPressed: () {
                          launch('https://aperfectplate.co/');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/apple.png',
                              height: sheight / 30,
                              color: Colors.white,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'App Store',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                new Divider(
                  color: Colors.yellow,
                  height: sheight / 8,
                  thickness: 2.0,
                ),
                /*



            */
                new Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Text(
                        '12.Rachael Hartley',
                        style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://www.rachaelhartleynutrition.com/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                new SizedBox(
                  height: sheight / 30,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 40,
                    right: sheight / 40,
                  ),
                  child: new Text(
                    'Rachael Hartley loves food and the way it helps us take care of our bodies. She has a background in psychology, she combines this with ideas that will help us rethink the idea of food in general giving you tools to be successful, healthy and happy.',
                    style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white),
                  ),
                ),
                new SizedBox(
                  height: sheight / 25,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 13,
                    right: sheight / 13,
                  ),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new ElevatedButton(
                        onPressed: () {
                          launch('https://www.rachaelhartleynutrition.com/');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/play.png',
                              height: sheight / 35,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'Play Store',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                      new SizedBox(
                        height: sheight / 25,
                      ),
                      new ElevatedButton(
                        onPressed: () {
                          launch('https://www.rachaelhartleynutrition.com/');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/apple.png',
                              height: sheight / 30,
                              color: Colors.white,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'App Store',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                new Divider(
                  color: Colors.yellow,
                  height: sheight / 8,
                  thickness: 2.0,
                ),
                /*



            */
                new Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Text(
                        '13.Nice Cream',
                        style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://www.cricket.one/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                new SizedBox(
                  height: sheight / 30,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 40,
                    right: sheight / 40,
                  ),
                  child: new Text(
                    'Nicecream was started in a small home kitchen, as two food lovers weekend project. College sweethearts, Gil Welsford and Sandra Tran, love trying adventurous recipes.Starting in farmers markets, the two push carted their way into the hearts of ice cream lovers all over DC. Nicecream has stayed true to its values of fresh, ethically raised milk and produce while they continue to spread their passion for freshly crafted ice cream throughout DC. ',
                    style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white),
                  ),
                ),
                new SizedBox(
                  height: sheight / 25,
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight / 13,
                    right: sheight / 13,
                  ),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new ElevatedButton(
                        onPressed: () {
                          launch('https://www.nicecream.com/');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/play.png',
                              height: sheight / 35,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'Play Store',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                      new SizedBox(
                        height: sheight / 25,
                      ),
                      new ElevatedButton(
                        onPressed: () {
                          launch('https://www.nicecream.com/');
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Image.asset(
                              'assets/apple.png',
                              height: sheight / 30,
                              color: Colors.white,
                            ),
                            new SizedBox(
                              width: sheight / 50,
                            ),
                            new Text(
                              'App Store',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: sheight / 40,
                                  fontFamily: 'Apple'),
                            ),
                          ],
                        ),
                        style: (ElevatedButton.styleFrom(
                          primary: Colors.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: sheight / 25, vertical: sheight / 90),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60.0),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                new Divider(
                  color: Colors.yellow,
                  height: sheight / 8,
                  thickness: 2.0,
                ),
                /*



            */
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
