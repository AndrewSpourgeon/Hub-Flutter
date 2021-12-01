import 'package:flutter/material.dart';
import 'package:hub/menu.dart';
import 'package:hub/selection.dart';
import 'package:url_launcher/url_launcher.dart';

class Photo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PhotoState();
  }
}

class PhotoState extends State<Photo> {
  Widget build(BuildContext context) {
    var sheight = MediaQuery.of(context).size.height;
    var swidth = MediaQuery.of(context).size.width;
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
            color: Colors.greenAccent.shade700,
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
                color: Colors.greenAccent.shade700,
              ),
            ),
          ),
        ],
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              'Photography',
              style: new TextStyle(
                fontFamily: 'Apple',
                fontSize: 25,
                color: Colors.greenAccent.shade700,
              ),
            ),
            new SizedBox(
              width: sheight / 90,
            ),
            new Image.asset(
              'assets/photography.png',
              height: sheight / 22,
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1554080353-a576cf803bda?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80',
          ),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
            child: SingleChildScrollView(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /* new SizedBox(
                height: sheight / 150,
              ),*/
              new Container(
                child: new Image.asset(
                  'assets/iphoto.png',
                  height: sheight / 9.5,
                ),
              ),
              new SizedBox(
                height: sheight / 4,
              ),
              new Container(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Icon(
                      Icons.info_outline,
                      size: sheight / 35,
                      color: Colors.green.shade600,
                    ),
                    new SizedBox(
                      width: sheight / 100,
                    ),
                    new Text(
                      'Click on web icon to visit the website',
                      style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: sheight / 45,
                          color: Colors.green.shade600),
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
                      '1.Unsplash',
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
                        launch('https://unsplash.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.green,
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
                  'Not a wrong publicity but I would say unsplash is better than pexels in the context of image quality and varience as it shows better relevant pictures you search for.Best web for mobile and desktop wallpapers.',
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
                        launch('https://unsplash.com/');
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
                            'https://apps.apple.com/us/app/unsplash/id1290631746');
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
                color: Colors.green,
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
                      '2.Pexels',
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
                        launch('https://www.pexels.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.green,
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
                  'Best web for mobile wallpapers.All for free.',
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
                            'https://play.google.com/store/apps/details?id=com.pexels.app&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/pexels/id1434330413');
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
                color: Colors.green,
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
                      '3.WallPaper Up',
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
                        launch('https://www.wallpaperup.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.green,
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
                  'Mostly unknown to many people but this web has a wide variety of photos of actress and movies that are hard to find in many other websites.Awesome one for wallpapers and for exploring new wallpapers',
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
                        launch('https://www.wallpaperup.com/');
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
                        launch('https://www.wallpaperup.com/');
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
                color: Colors.green,
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
                      '4.HD wallpapers',
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
                        launch('https://www.hdwallpapers.in/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.green,
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
                  'Neatly designed for different categories,resolutions and devices.No app release for iOS.',
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
                            'https://play.google.com/store/apps/details?id=com.hdwall.app');
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
                        launch('https://www.hdwallpapers.in/');
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
                color: Colors.green,
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
                      '5.Videoder',
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
                        launch('https://www.videoder.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.green,
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
                  'Started as You-Tube videos downloader but now supports 1000+ sites.Biggest hit in Android.Insta,fb,tittok,youtube many more.With highest resolution possible.I bet this app is the best app for downloading videos from differnt sites.Beautiful UI and you can directly download from the site or app itself thus there is no need to open videoder app again.',
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
                            'https://www.videoder.com/youtube-downloader-for-android');
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
                        launch('https://www.videoder.com/');
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
                color: Colors.green,
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
                      '6.Ragalahari',
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
                        launch('https://www.ragalahari.com/index.aspx');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.green,
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
                  'All super HD actors and actress photos of Tollywood , Bollywood , Kollywood will be available here.It is the official website created for actors and actress websites.Not only this but also images of behind the scenes of every movie will be available.',
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
                        launch('https://www.ragalahari.com/index.aspx');
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
                        launch('https://www.ragalahari.com/index.aspx');
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
                color: Colors.green,
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
                      '7.IdleBrain',
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
                        launch('http://www.idlebrain.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.green,
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
                  'You will find more photos of actors and actress than ragalahari here.But the water mark is a bit irritating.',
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
                        launch('http://www.idlebrain.com/');
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
                        launch('http://www.idlebrain.com/');
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
                color: Colors.green,
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
                      '8.Snapseed',
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
                        launch('https://snapseedpc.online/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.green,
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
                  'Developed by Google.Snapseed is probably the best free photo editor on Android. It comes with a variety of both simple and advanced tools.Best for face enhancement , vintage looks and for scenery editings.',
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
                            'https://play.google.com/store/apps/details?id=com.niksoftware.snapseed');
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
                            'https://apps.apple.com/us/app/snapseed/id439438619');
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
                color: Colors.green,
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
                      '9.Lightroom',
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
                        launch('https://lightroom.adobe.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.green,
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
                  'Lightroom is best for color controls,saturation,gradients,black and white conversion.Unlike Adobe Photoshop, Lightroom is a non-destructive photo editor, meaning that you don’t have to worry about that pesky “save as” button. In fact, Lightroom has no “save” button at all. All of the edits are automatically kept in your Lightroom catalog, which acts as your database of edits and history.',
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
                            'https://play.google.com/store/apps/details?id=com.adobe.lrmobile&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/adobe-lightroom-photo-editor/id878783582');
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
                color: Colors.green,
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
                      '10.PicsArt',
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
                        launch('https://picsart.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.green,
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
                  'Customize fonts ,free backgrounds , make png , edit backgrounds , hundrends of inbuilt effects, customize layers, draw, collages, all types of photo edits, millions of hd stickers all at one place.This is best user customization app.You can always create new with picsart.',
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
                            'https://play.google.com/store/apps/details?id=com.picsart.studio&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/picsart-photo-video-editor/id587366035');
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
                color: Colors.green,
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
                      '11.Canva',
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
                        launch('https://www.canva.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.green,
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
                  'Create beautiful , eye catching , impressive photos ,posters,resumes,book covers,worksheets,reports with millions of inbuilt templates here.',
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
                            'https://play.google.com/store/apps/details?id=com.canva.editor&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/canva-graphic-design-video/id897446215');
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
                color: Colors.green,
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
                      '12.InShot',
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
                        launch('http://inshot.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.green,
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
                  'Easy and simple video and photo editing app.Easy understandable.Best thing about Inshot is it will save your work as a draft even though you quit your app in the middle so no need to start again from the beginning.You can now save your edited video in 4K 60fps resolution.',
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
                            'https://play.google.com/store/apps/details?id=com.camerasideas.instashot&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/inshot-video-editor/id997362197');
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
                color: Colors.green,
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
                      '13.SmartMockUp',
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
                        launch('https://smartmockups.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.green,
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
                  'Created an app or a web and want to advertise with beautiful mockups ?This one is for you.This web provides you hundreds of 2D and 3D mockups of different devices and things with a 7 day free trail.',
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
                        launch('https://smartmockups.com/');
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
                        launch('https://smartmockups.com/');
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
                color: Colors.green,
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
                      '13.MockUPhone',
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
                        launch('https://mockuphone.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.green,
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
                  'Best for 2D mockups of different devices.',
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
                        launch('https://mockuphone.com/');
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
                        launch('https://mockuphone.com/');
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
                color: Colors.green,
                height: sheight / 8,
                thickness: 2.0,
              ),
              /*



            */
            ],
          ),
        )),
      ),
    ));
  }
}
