import 'package:flutter/material.dart';
import 'package:hub/menu.dart';
import 'package:hub/selection.dart';
import 'package:url_launcher/url_launcher.dart';

class Sports extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SportsState();
  }
}

class SportsState extends State<Sports> {
  Widget build(BuildContext context) {
    var sheight = MediaQuery.of(context).size.height;
    //  var swidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: ElevatedButton(
            child: Icon(Icons.menu_sharp),
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0.0,
            ),
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
                ),
              ),
            ),
          ],
          title: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Text(
                'Sports',
                style: new TextStyle(
                  fontFamily: 'Apple',
                  fontSize: 25,
                ),
              ),
              new SizedBox(
                width: sheight / 90,
              ),
              new Image.asset(
                'assets/sports.png',
                height: sheight / 18,
              )
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
              'https://images.pexels.com/photos/2799556/pexels-photo-2799556.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
            fit: BoxFit.cover,
          )),
          child: SafeArea(
            child: SingleChildScrollView(
              child: new Column(
                //   textBaseline: ,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new SizedBox(
                    height: sheight / 20,
                  ),
                  new Container(
                    child: new Image.asset(
                      'assets/isports.png',
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
                          color: Colors.white,
                        ),
                        new SizedBox(
                          width: sheight / 100,
                        ),
                        new Text(
                          'Click on web icon to visit the website',
                          style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 45,
                            color: Colors.white,
                          ),
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
                          '1.Cricbuzz',
                          style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white,
                          ),
                        ),
                        new SizedBox(
                          width: sheight / 60,
                        ),
                        new GestureDetector(
                          onTap: () {
                            launch('https://www.cricbuzz.com/');
                          },
                          child: new Image.asset(
                            'assets/web.png',
                            height: sheight / 25,
                            color: Colors.black,
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
                      'No Introduction needed to cricket lovers.This is the only TV,hotstar,radio for cricket lovers in their childhood.But if you are new to the religion of cricket this the best place for you.You can see live scores , stats , schedules what not everything you want to know about cricket.',
                      style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white,
                      ),
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
                                'https://play.google.com/store/apps/details?id=com.cricbuzz.android&hl=en_IN&gl=US');
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
                            elevation: 12,
                            padding: EdgeInsets.symmetric(
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
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
                                'https://apps.apple.com/in/app/cricbuzz-cricket-scores-news/id360466413');
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
                            elevation: 12,
                            padding: EdgeInsets.symmetric(
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(60.0),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  new Divider(
                    color: Colors.black,
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
                          '2.ESPN',
                          style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white,
                          ),
                        ),
                        new SizedBox(
                          width: sheight / 60,
                        ),
                        new GestureDetector(
                          onTap: () {
                            launch('https://www.espn.in/');
                          },
                          child: new Image.asset(
                            'assets/web.png',
                            height: sheight / 25,
                            color: Colors.black,
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
                      'It\'s the home web of sports.Not designed for a specific one you can know about any ongoing /upcoming/or past news and data regarding sports.',
                      style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white,
                      ),
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
                                'https://play.google.com/store/apps/details?id=com.espn.score_center&hl=en_IN&gl=US');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
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
                                'https://apps.apple.com/us/app/espn-live-sports-scores/id317469184');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(60.0),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  new Divider(
                    color: Colors.black,
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
                          '3.90Min',
                          style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white,
                          ),
                        ),
                        new SizedBox(
                          width: sheight / 60,
                        ),
                        new GestureDetector(
                          onTap: () {
                            launch('https://www.90min.com/in');
                          },
                          child: new Image.asset(
                            'assets/web.png',
                            height: sheight / 25,
                            color: Colors.black,
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
                      'Football fan ? This one is for you.In this web you will get the latest updates and news about football matches.This is seperately made for the football sport . ',
                      style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white,
                      ),
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
                                'https://play.google.com/store/apps/details?id=net.magtoapp.viewer.ninetyminutes&hl=en&gl=US');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
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
                                'https://apps.apple.com/in/app/90min-india-live-soccer-scores-news-schedules-standings/id1111157934');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(60.0),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  new Divider(
                    color: Colors.black,
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
                          '4.NFL',
                          style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white,
                          ),
                        ),
                        new SizedBox(
                          width: sheight / 60,
                        ),
                        new GestureDetector(
                          onTap: () {
                            launch('https://www.nfl.com/');
                          },
                          child: new Image.asset(
                            'assets/web.png',
                            height: sheight / 25,
                            color: Colors.black,
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
                      'RugBy fans come around.The latest updates,scores,live of all the rugby matches around the world at a single place.NFL has placed in top 5 sports website in the world in 2021.',
                      style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white,
                      ),
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
                                'https://play.google.com/store/apps/details?id=com.gotv.nflgamecenter.us.lite&hl=en_IN&gl=US');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
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
                                'https://apps.apple.com/us/app/nfl/id389781154');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(60.0),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  new Divider(
                    color: Colors.black,
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
                          '5.MLB',
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
                            color: Colors.black,
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
                      'The official website for baseball.Puts every inch and ounce about baseball matches infront of you.very handy,easy and useful for baseball fans',
                      style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white,
                      ),
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
                                'https://play.google.com/store/apps/details?id=com.bamnetworks.mobile.android.gameday.atbat&hl=en_IN&gl=US');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
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
                                'https://apps.apple.com/us/app/mlb/id493619333');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(60.0),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  new Divider(
                    color: Colors.black,
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
                          '6.NBA',
                          style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white,
                          ),
                        ),
                        new SizedBox(
                          width: sheight / 60,
                        ),
                        new GestureDetector(
                          onTap: () {
                            launch('https://in.nba.com/?gr=www');
                          },
                          child: new Image.asset(
                            'assets/web.png',
                            height: sheight / 25,
                            color: Colors.black,
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
                      'The most popular website of sport all around the world.Especially made for basketball.I think it\'s a well known word(NBA) so introduction is a waste.',
                      style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white,
                      ),
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
                                'https://play.google.com/store/apps/details?id=com.nbaimd.gametime.nba2011&hl=en_IN&gl=US');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
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
                                'https://apps.apple.com/bg/app/nba-live-games-scores/id484672289');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(60.0),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  new Divider(
                    color: Colors.black,
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
                          '7.CBSsports',
                          style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white,
                          ),
                        ),
                        new SizedBox(
                          width: sheight / 60,
                        ),
                        new GestureDetector(
                          onTap: () {
                            launch('https://www.cbssports.com/');
                          },
                          child: new Image.asset(
                            'assets/web.png',
                            height: sheight / 25,
                            color: Colors.black,
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
                      'BasketBall,BaseBall,Golf at one place.',
                      style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white,
                      ),
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
                                'https://play.google.com/store/apps/details?id=com.handmark.sportcaster&hl=en&gl=US');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
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
                                'https://apps.apple.com/us/app/cbs-sports-app-scores-news/id307184892');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(60.0),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  new Divider(
                    color: Colors.black,
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
                          '8.Bodybuilding',
                          style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white,
                          ),
                        ),
                        new SizedBox(
                          width: sheight / 60,
                        ),
                        new GestureDetector(
                          onTap: () {
                            launch('https://www.bodybuilding.com/en-IN/index');
                          },
                          child: new Image.asset(
                            'assets/web.png',
                            height: sheight / 25,
                            color: Colors.black,
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
                      'Official website for bodybuilding.Find the best trainers and products for your body and fitness from around the world.Fit Freakers worth giving it a shot.',
                      style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white,
                      ),
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
                                'https://play.google.com/store/apps/details?id=com.bodybuilding.rise&hl=en_IN&gl=US');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
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
                                'https://apps.apple.com/us/app/bodyfit-fitness-training-coach/id1389506691');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(60.0),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  new Divider(
                    color: Colors.black,
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
                          '9.NBC sports',
                          style: new TextStyle(
                            fontFamily: 'Apple',
                            color: Colors.white,
                            fontSize: sheight / 30,
                          ),
                        ),
                        new SizedBox(
                          width: sheight / 60,
                        ),
                        new GestureDetector(
                          onTap: () {
                            launch('https://www.nbcsports.com/');
                          },
                          child: new Image.asset(
                            'assets/web.png',
                            height: sheight / 25,
                            color: Colors.black,
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
                      'National Broadcasting Company.One of the finest website to get know about all the offical sports at one place.This one is a huge company in the context of broadcasting.You can also live stream here.',
                      style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white,
                      ),
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
                                'https://play.google.com/store/apps/details?id=com.nbcuni.nbc&hl=en_IN&gl=US');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
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
                                'https://apps.apple.com/us/app/the-nbc-app-stream-tv-shows/id442839435');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(60.0),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  new Divider(
                    color: Colors.black,
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
                          '10.Cricaduim',
                          style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white,
                          ),
                        ),
                        new SizedBox(
                          width: sheight / 60,
                        ),
                        new GestureDetector(
                          onTap: () {
                            launch('https://www.cricadium.com/');
                          },
                          child: new Image.asset(
                            'assets/web.png',
                            height: sheight / 25,
                            color: Colors.black,
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
                      'Cricadium is a one stop platform for all the ardent cricket fans around the world. It is run by the people who eat and sleep cricket. They strive to bring you the best possible cricketing content from across the globe to take the fans closer to the game that we all love.',
                      style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white,
                      ),
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
                                'https://play.google.com/store/apps/details?id=com.xcelcorp.cricdost&hl=en_US&gl=US');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
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
                            launch('https://www.cricadium.com/');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(60.0),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  new Divider(
                    color: Colors.black,
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
                          '11.CricDost',
                          style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white,
                          ),
                        ),
                        new SizedBox(
                          width: sheight / 60,
                        ),
                        new GestureDetector(
                          onTap: () {
                            launch('https://cricdost.com/');
                          },
                          child: new Image.asset(
                            'assets/web.png',
                            height: sheight / 25,
                            color: Colors.black,
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
                      'Cric Dost application empowers you in a multi-faceted role - from e-scoring to live broadcasting, from finding grounds to hosting matches to finding umpires and commentators all at one place. Have you ever wanted to organise a cricket tournament and deliver to a wider audience without any hassle? Cric Dost gets you covered. Create the tournament, add your team and Boom! ',
                      style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white,
                      ),
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
                                'https://play.google.com/store/apps/details?id=com.xcelcorp.cricdost&hl=en_US&gl=US');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
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
                                'https://apps.apple.com/in/app/cricdost-play-cricket/id1367161611');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(60.0),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  new Divider(
                    color: Colors.black,
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
                          '12.ICC',
                          style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white,
                          ),
                        ),
                        new SizedBox(
                          width: sheight / 60,
                        ),
                        new GestureDetector(
                          onTap: () {
                            launch('https://www.icc-cricket.com/');
                          },
                          child: new Image.asset(
                            'assets/web.png',
                            height: sheight / 25,
                            color: Colors.black,
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
                      'The ICC will promote cricket by delivering exciting and engaging global events around the world.The ICC presides over the ICC Code of Conduct, playing conditions, the Decision Review System and other ICC regulations.You can watch every indian cricket match hilights here bye bye hotstar.',
                      style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white,
                      ),
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
                                'https://play.google.com/store/apps/details?id=com.pl.cwc_2015&hl=en_IN&gl=US');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
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
                                'https://apps.apple.com/us/app/icc-cricket/id956440606');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(60.0),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  new Divider(
                    color: Colors.black,
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
                          '13.One Cricket',
                          style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 30,
                            color: Colors.white,
                          ),
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
                            color: Colors.black,
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
                      'Tired of opening the cricket score website and refreshing it many times ? Time to check out One cricket.This app provides you a notifier type bubble on your home screen with user customization where you dont need to refresh it all the time and it gets updated ball to ball.Just paste it in homescreen and leave your phone behind.Such a treat for cricket lovers who try to see scores in the middle of a class.',
                      style: new TextStyle(
                        fontFamily: 'Apple',
                        fontSize: sheight / 45,
                        color: Colors.white,
                      ),
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
                                'https://play.google.com/store/apps/details?id=one.cricket.app&hl=en_IN&gl=US');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
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
                                'https://apps.apple.com/us/app/onecricket/id1502683595');
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
                                horizontal: sheight / 25,
                                vertical: sheight / 90),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(60.0),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  new Divider(
                    color: Colors.black,
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
      ),
    );
  }
}
