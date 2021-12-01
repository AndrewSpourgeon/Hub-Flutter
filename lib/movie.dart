import 'package:flutter/material.dart';
import 'package:hub/menu.dart';
import 'package:hub/selection.dart';
import 'package:url_launcher/url_launcher.dart';

class Movie extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MovieState();
  }
}

class MovieState extends State<Movie> {
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
            color: Colors.yellowAccent,
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
                color: Colors.yellowAccent,
              ),
            ),
          ),
        ],
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              'Movie',
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
              'assets/movie.png',
              height: sheight / 18,
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1540224871915-bc8ffb782bdf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
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
                  'assets/imovie.png',
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
                      '1.Just Watch',
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
                        launch('https://www.justwatch.com/');
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
                  'Best streaming guide ,helps you to know the platform of the movie you are searching for.No need to call your friend and ask.',
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
                            'https://play.google.com/store/apps/details?id=com.justwatch.justwatch&referrer=utm_source%3Djustwatch%26utm_medium%3Dapppage');
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
                            'https://apps.apple.com/app/apple-store/id979227482');
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
                      '2.YTS',
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
                        launch('https://yts.rs/');
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
                  'The best best best web and app to download original quality hollywood movies.For some reasons the app has been removed from play store few years back but you can download the app fom it\'s official web.Anyways it\'s hard to find the app so contact me for the app from the links provided in \'about the creator\' screen.',
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
                        launch('https://yts.rs/');
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
                        launch('https://yts.rs/');
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
                      '3.uTorrent',
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
                        launch('https://www.utorrent.com/');
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
                  'No explantion needed ofcourse.',
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
                            'https://play.google.com/store/apps/details?id=com.utorrent.client&hl=en_IN&gl=US');
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
                        launch('https://www.utorrent.com/');
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
                      '4.BitTorrent',
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
                        launch('https://www.bittorrent.com/');
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
                  'In some cases utorrent doesn\'t allow some movies to be downloaded.Then this one will the best choice.',
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
                            'https://play.google.com/store/apps/details?id=com.bittorrent.client&hl=en_IN&gl=US');
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
                        launch('https://www.bittorrent.com/');
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
                      '5.MX player',
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
                        launch('https://www.mxplayer.in/');
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
                  'Stream all the SUN nxt movies for free and many web series for free.I mentioned this app because this is the best app to download subtitiles inside the app itself while streaming a movie or can access online subtitles of any movie if the torrent haven\'t provided one for you.MX Share ,Whatsapp status downloader and much more.',
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
                            'https://play.google.com/store/apps/details?id=com.mxtech.videoplayer.ad&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/in/app/mx-player/id1429703801');
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
                      '6.Just Tickets',
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
                        launch('https://www.justickets.in/cities');
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
                  'The biggest issue while booking tickets for a movie in paytm or bookmyshow is the blocking the booking of a seat when someone holds it and romoves the app.Just tickets solve it for you and you can get real and perfect information and it is fast even few minutes before the movie starts.',
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
                            'https://play.google.com/store/apps/details?id=in.justickets.android');
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
                            'https://apps.apple.com/in/app/justickets-movie-tickets-show/id595107857');
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
                      '7.IMDB',
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
                        launch('https://www.imdb.com/?ref_=nv_home');
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
                  'Discover the best and top rated films in the world’s largest collection of movies and TV Shows.  Aside from films, IMDB offers an extensive collection of reviews, trailers, clips and celebrity information for each movie profile.',
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
                            'https://play.google.com/store/apps/details?id=com.imdb.mobile');
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
                            'https://apps.apple.com/app/imdb-movies-tv/id342792525');
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
                      '8.MovieRulz',
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
                        launch('https://moviesrulz.net/');
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
                  'Do you really expect to write something about this web?',
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
                        launch('https://moviesrulz.net/');
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
                        launch('https://moviesrulz.net/');
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
                      '9.Telegram',
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
                        launch('https://telegram.org/');
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
                  'Biggest enemy to all the official OTT platforms',
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
                            'https://play.google.com/store/apps/details?id=org.telegram.messenger&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/telegram-messenger/id686449807');
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
        )),
      ),
    ));
  }
}
