import 'package:flutter/material.dart';
import 'package:hub/menu.dart';
import 'package:hub/selection.dart';
import 'package:url_launcher/url_launcher.dart';

class Browse extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BrowseState();
  }
}

class BrowseState extends State<Browse> {
  Widget build(BuildContext context) {
    var sheight = MediaQuery.of(context).size.height;
    //  var swidth = MediaQuery.of(context).size.width;
    return MaterialApp(
        home: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        leading: ElevatedButton(
          child: Icon(
            Icons.menu_sharp,
            color: Colors.orangeAccent.shade700,
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
                color: Colors.orangeAccent.shade700,
              ),
            ),
          ),
        ],
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              'Browsers',
              style: new TextStyle(
                fontFamily: 'Apple',
                fontSize: 25,
                color: Colors.orangeAccent.shade700,
              ),
            ),
            new SizedBox(
              width: sheight / 90,
            ),
            new Image.asset(
              'assets/browse.png',
              height: sheight / 18,
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
            'https://images.pexels.com/photos/4009599/pexels-photo-4009599.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
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
                    'assets/ibrowse.png',
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
                        color: Colors.orange.shade600,
                      ),
                      new SizedBox(
                        width: sheight / 100,
                      ),
                      new Text(
                        'Click on web icon to visit the website',
                        style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 45,
                            color: Colors.orange.shade600),
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
                        '1.Mozilla',
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
                          launch('https://www.mozilla.org/en-US/firefox/new/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.orange,
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
                    'Best in terms of security , utility , privacy, Portability.Firefox is the most private browser that doesn’t lock you into an ecosystem. Use it on any operating system, on all your devices, and feel secure when you do. ',
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
                              'https://play.google.com/store/apps/details?id=org.mozilla.firefox&hl=en_IN&gl=US');
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
                              'https://apps.apple.com/us/app/firefox-private-safe-browser/id989804926');
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
                  color: Colors.orange,
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
                        '2.Brave',
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
                          launch('https://brave.com/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.orange,
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
                    'Compared to mozilla firefox brave is 3 qualities backward i.e Text to speech , In-browser screenshot tool,primary password.This is the 2nd most secure and fast browser. ',
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
                              'https://play.google.com/store/apps/details?id=com.brave.browser&hl=en_IN&gl=US');
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
                              'https://apps.apple.com/us/app/brave-private-web-browser-vpn/id1052879175');
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
                  color: Colors.orange,
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
                        '3.Microsoft Edge',
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
                          launch('https://www.microsoft.com/en-us/edge');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.orange,
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
                    'Edge is very very fast and also better in the context of security and utility but when it comes to portability it lacks OS availability.But Edge is fast and handy.',
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
                              'https://play.google.com/store/apps/details?id=com.microsoft.emmx&hl=en_IN&gl=US');
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
                              'https://apps.apple.com/us/app/microsoft-edge-web-browser/id1288723196');
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
                  color: Colors.orange,
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
                        '4.Opera',
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
                          launch('https://www.opera.com/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.orange,
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
                    'It has free in-built VPN which makes opera most special from other browsers.Opera was initially released in April 1995, making it one of the oldest desktop web browsers still actively developed today.But it does not block social trackers,do not allow text to speech ,but best in portability.',
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
                              'https://play.google.com/store/apps/details?id=com.opera.browser&hl=en_IN&gl=US');
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
                              'https://apps.apple.com/us/app/opera-browser-fast-private/id1411869974');
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
                  color: Colors.orange,
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
                        '5.Chrome',
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
                          launch('https://www.google.com/intl/en_in/chrome/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.orange,
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
                    'It’s the world’s favourite browser, but it can be a memory-muncher.Speedy performance , Allows cross platform ,very expandable but it is always resource hungry.If you have a low RAM phone or device do not choose chrome.',
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
                              'https://play.google.com/store/apps/details?id=com.android.chrome&hl=en_GB&gl=US');
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
                              'https://apps.apple.com/us/app/google-chrome/id535886823');
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
                  color: Colors.orange,
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
                        '6.Vivaldi',
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
                          launch('https://vivaldi.com/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.orange,
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
                    ' You can pin sites to the sidebar, stick toolbars wherever suits and adjust pages’ fonts and color schemes; have a notes panel as well as the usual history and bookmarks bits; customize the way search works and give search engines nicknames; change how tabs work and get grouped and much, much more.Can use in Andriod(beta) version only',
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
                              'https://play.google.com/store/apps/details?id=com.vivaldi.browser&hl=en_IN&gl=US');
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
                          launch('https://vivaldi.com/');
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
                  color: Colors.orange,
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
                        '7.Tor',
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
                          launch('https://www.torproject.org/download/');
                        },
                        child: new Image.asset(
                          'assets/web.png',
                          height: sheight / 25,
                          color: Colors.orange,
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
                    'The Tor browser is an internet browser that allows users to surf the web anonymously. It also gives you access to the dark web. Tor is a worldwide network of servers specifically made for private communication.You need a decent VPN installed in your device before using tor browser.Tor is the basis of true freedom on the internet but many illegal activities are excuted here so we strongly advice not to hit dark web and do not click on any sites that you don\'t trust.',
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
                              'https://play.google.com/store/apps/details?id=org.torproject.torbrowser');
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
                              'https://apps.apple.com/us/app/onion-browser/id519296448');
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
                  color: Colors.orange,
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
