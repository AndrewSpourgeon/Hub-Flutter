import 'package:flutter/material.dart';
import 'package:hub/menu.dart';
import 'package:hub/selection.dart';
import 'package:url_launcher/url_launcher.dart';

class Know extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return KnowState();
  }
}

class KnowState extends State<Know> {
  Widget build(BuildContext context) {
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
            color: Colors.redAccent.shade700,
          ),
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
                color: Colors.redAccent.shade700,
              ),
            ),
          ),
        ],
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              'Knowledge',
              style: new TextStyle(
                fontFamily: 'Apple',
                fontSize: 25,
                color: Colors.redAccent.shade700,
              ),
            ),
            new SizedBox(
              width: sheight / 90,
            ),
            new Image.asset(
              'assets/knowledge.png',
              height: sheight / 22,
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1532012197267-da84d127e765?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80',
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
                    'assets/iknow.png',
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
                        color: Colors.red.shade600,
                      ),
                      new SizedBox(
                        width: sheight / 100,
                      ),
                      new Text(
                        'Click on web icon to visit the website',
                        style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 45,
                            color: Colors.redAccent.shade700),
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
                        '1.Quora',
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
                          launch('https://www.quora.com/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.red,
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
                    'No matter what the question is you\'ll find the answer here.Not only getting answers but you can aslo share your views.No 1 App in gaining knowledge.',
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
                              'https://play.google.com/store/apps/details?id=com.quora.android&hl=en_IN&gl=US');
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
                              'https://apps.apple.com/us/app/quora/id456034437');
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
                  color: Colors.red,
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
                        '2.Ted X',
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
                          launch('https://www.ted.com/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.red,
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
                    'TED\'s tagline is "ideas worth spreading.\" TED Talks is a video collection in the form of short, powerful speeches on every subject imaginable (18 minutes or less).This is the best app and platform i\'ve ever seen to learn new and interesting thigs from different edges of world. ',
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
                              'https://play.google.com/store/apps/details?id=com.ted.android&hl=en_IN&gl=US');
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
                              'https://apps.apple.com/us/app/ted/id376183339');
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
                  color: Colors.red,
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
                        '3.Learnyst',
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
                          launch('https://www.learnyst.com/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.red,
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
                    'Learnist is a collaborative knowledge-sharing site where users create and curate "learning boards" composed of text, images, video, and audio.',
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
                              'https://play.google.com/store/apps/details?id=com.learnyst.learnyststudio&hl=en_IN&gl=US');
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
                              'https://apps.apple.com/us/app/learnyst/id1114258010');
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
                  color: Colors.red,
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
                        '4.Mental Floss',
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
                          launch(
                              'https://play.google.com/store/apps/details?id=com.hrd.facts&hl=en_US');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.red,
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
                    'By just reading a sentence or two every day, you’ll quickly build an impressive arsenal of the type of grab-bag information that’ll make you everybody’s first choice for their trivia team. The app includes interesting facts about history, science, sports, life hacks, animals, the human body, and more—all you have to do is enable push notifications',
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
                              'https://play.google.com/store/apps/details?id=com.hrd.facts&hl=en_US');
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
                              'https://apps.apple.com/us/app/daily-random-facts/id924977069');
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
                  color: Colors.red,
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
                        '5.INATURALIST',
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
                          launch('https://www.inaturalist.org/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.red,
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
                    'Snap a photo of any plant or animal in your area, and iNaturalist will use crowdsourced image data to identify the species.You can also chat with knowledgeable scientists and naturalists within the app who may know the answer themselves. ',
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
                              'https://play.google.com/store/apps/details?id=org.inaturalist.android&hl=en_US');
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
                              'https://apps.apple.com/us/app/inaturalist/id421397028');
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
                  color: Colors.red,
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
                        '6.Coursera',
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
                          launch('https://www.coursera.org/in');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.red,
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
                    'Coursera is a platform where anyone can take free online classes from 120-plus top universities--including Stanford, Yale, and Princeton--and educational organizations.',
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
                              'https://play.google.com/store/apps/details?id=org.coursera.android&hl=en_IN&gl=US');
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
                              'https://apps.apple.com/us/app/coursera-learn-new-skills/id736535961');
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
                  color: Colors.red,
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
                        '7.Amazon Kindle',
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
                          launch(
                              'https://www.amazon.com/Kindle-Now-with-Built-in-Front-Light/dp/B07978J597');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.red,
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
                    'When we are talking of free eBook apps, there is no way we can miss out mentioning Kindle. It is by far one of the most popular book reading apps. You can signup & download it here. and read a lot of free books that span nearly all categories from romance to fiction, non-fiction, historical and more.',
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
                              'https://play.google.com/store/apps/details?id=com.amazon.kindle&hl=en_IN&gl=US');
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
                              'https://apps.apple.com/us/app/amazon-kindle/id302584613');
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
                  color: Colors.red,
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
                        '8.FlipBoard',
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
                          launch('https://flipboard.com/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.red,
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
                    'It aggregates content from social media, news feeds, photo sharing sites and other websites, presents it in magazine format, and allows users to "flip" through the articles, images and videos being shared. Readers can also save stories into Flipboard magazines',
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
                              'https://play.google.com/store/apps/details?id=flipboard.app&hl=en_IN&gl=US');
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
                              'https://apps.apple.com/us/app/flipboard-latest-stories/id358801284');
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
                  color: Colors.red,
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
                        '9.Life Hacks',
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
                          launch('https://blog.crumblyy.com/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.red,
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
                    'What a Lovely App.',
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
                              'https://play.google.com/store/apps/details?id=io.tnine.lifehacks_&hl=en_IN&gl=US');
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
                          launch('https://blog.crumblyy.com/');
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
                  color: Colors.red,
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
