import 'package:flutter/material.dart';
import 'package:hub/menu.dart';
import 'package:hub/selection.dart';
import 'package:url_launcher/url_launcher.dart';

class Travel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TravelState();
  }
}

class TravelState extends State<Travel> {
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
            color: Colors.blueAccent,
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
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              'Travel',
              style: new TextStyle(
                fontFamily: 'Apple',
                fontSize: 25,
                color: Colors.blueAccent,
              ),
            ),
            new SizedBox(
              width: sheight / 90,
            ),
            new Image.asset(
              'assets/travel.png',
              height: sheight / 18,
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
            'https://images.pexels.com/photos/1837591/pexels-photo-1837591.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
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
                  'assets/itravel.png',
                  height: sheight / 5,
                  color: Colors.black,
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
                      color: Colors.blueAccent.shade700,
                    ),
                    new SizedBox(
                      width: sheight / 100,
                    ),
                    new Text(
                      'Click on web icon to visit the website',
                      style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: sheight / 45,
                          color: Colors.blueAccent.shade700),
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
                      '1.AirBNB',
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
                        launch('https://www.airbnb.co.in/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.blue,
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
                  'Airbnb lets you rent individual rooms, couches, or an entire apartment from locals. I love Airbnb, as it’s a happy medium between hostels and hotels. Plus, if you stay with local hosts, you’ll still get the social aspect of a hostel. The app does everything the website does but at the tip of your fingers.',
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
                            'https://play.google.com/store/apps/details?id=com.airbnb.android&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/airbnb/id401626263');
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
                color: Colors.blue,
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
                      '2.Sky scanner',
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
                        launch('https://www.skyscanner.co.in/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.blue,
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
                  'Skyscanner is the best preferred method for finding cheap flights. The mobile app searches millions of flights from over 1,200 sources and then gives you the best options available (whether it’s the cheapest route, or the easiest one). The handy chart feature lets you look at the cheapest days or months to fly to your destination and sends you notification of price changes.',
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
                            'https://play.google.com/store/apps/details?id=net.skyscanner.android.main&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/skyscanner-travel-deals/id415458524');
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
                color: Colors.blue,
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
                      '3.HotelTonight',
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
                        launch('https://www.hoteltonight.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.blue,
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
                  'HotelTonight gives you amazing last-minute discounts on empty hotel rooms. It’s incredibly easy to use, and it doesn’t take long to reserve a room. You can search by city or attraction, or on the map, and then check out the reviews and photos from other travelers. It also has 24/7 customer support. ',
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
                            'https://play.google.com/store/apps/details?id=com.hoteltonight.android.prod&referrer=adjust_reftag%3Dc2AfmatS55XRG%26utm_source%3DDesktop%2BAppstore%2BLink');
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
                        launch('https://apps.apple.com/app/id407690035');
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
                color: Colors.blue,
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
                      '4.Open Rice',
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
                        launch('https://www.openrice.com/en/hongkong');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.blue,
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
                  'It shows a city’s most popular restaurants, ratings, menus, booking numbers, and everything in between.',
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
                            'https://play.google.com/store/apps/details?id=com.openrice.android&hl=en');
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
                            'https://apps.apple.com/ca/app/openrice/id310663323');
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
                color: Colors.blue,
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
                      '5.CouchSurfing',
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
                        launch('https://www.couchsurfing.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.blue,
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
                  ' Couchsurfing lets you connect with locals who have space in their home for travelers to stay for free.If you don’t want to stay with a local you can use the Hangouts feature to meet other travelers or locals for coffee, drinks, or to do something like visit a museum. It’s a great way for solo travelers to connect and be social. ',
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
                            'https://play.google.com/store/apps/details?id=com.couchsurfing.mobile.android#?t=W251bGwsMSwyLDIxMiwiY29tLmNvdWNoc3VyZmluZy5tb2JpbGUuYW5kcm9pZCJd');
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
                            'https://apps.apple.com/us/app/couchsurfing/id525642917');
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
                color: Colors.blue,
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
                      '6.IRCTC',
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
                        launch('https://www.irctc.co.in/nget/train-search');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.blue,
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
                  'Easy train ticket booking.No explanation need as it is well known.',
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
                            'https://play.google.com/store/apps/details?id=cris.org.in.prs.ima&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/in/app/irctc-rail-connect/id1386197253');
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
                color: Colors.blue,
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
                      '7.Kiwi',
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
                        launch('https://www.kiwi.com/en/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.blue,
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
                  'Kiwi is used mainly to book flights, but it will also take care of all your basic travel bookings: flight, hotel, car rental, even activities and tours. The app provides useful information on destinations and even airports, telling you how to find lounges, ATMs and luggage storage during a long layover. ',
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
                            'https://play.google.com/store/apps/details?hl=en&id=com.skypicker.main');
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
                            'https://apps.apple.com/us/app/kiwi-com-cheap-travel-deals/id657843853');
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
                color: Colors.blue,
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
                      '8.RoadTrippers',
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
                        launch('https://roadtrippers.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.blue,
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
                  'The app is especially useful for finding interesting and off-the-beaten-path roadside attractions as well as cool restaurants and can’t-miss landmarks you can bookmark.',
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
                            'https://play.google.com/store/apps/details?id=com.roadtrippers&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/roadtrippers-trip-planner/id944060491');
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
                color: Colors.blue,
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
                      '9.Pack point',
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
                        launch('https://www.packpnt.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.blue,
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
                  'PackPoint, takes all the stress out of packing. The app shows you what to bring based on the length of your trip, the weather in your destination and any activities you’re planning along the way. If you’ll have access to laundry facilities in your destination',
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
                            'https://play.google.com/store/apps/details?id=com.YRH.PackPoint&hl=en');
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
                            'https://apps.apple.com/us/app/packpoint-packing-list-travel/id896337401');
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
                color: Colors.blue,
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
                      '10.Flight Aware',
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
                        launch('https://uk.flightaware.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.blue,
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
                  'The FlightAware app allows you to track flights online, see a live map of a flight and check on delays, cancellations and gate changes. This app is especially helpful if you have a tight connection or want to track your flight. It’s also useful when picking friends and family up at the airport. You can track their flight and see updated landing times or delays.',
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
                            'https://play.google.com/store/apps/details?id=com.flightaware.android.liveFlightTracker&hl=en');
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
                            'https://apps.apple.com/us/app/flightaware-flight-tracker/id316793974');
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
                color: Colors.blue,
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
                      '11.Trip Lingo',
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
                        launch('http://www.triplingo.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.blue,
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
                  'TripLingo will help you sound like a local abroad as well as helping you adapt to a new culture. You start by selecting a destination and downloading the country pack. For example, if you’re heading to Italy, you’ll have a voice translator that will translate your voice into Italian;',
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
                            'https://play.google.com/store/apps/details?id=com.triplingo.enterprise');
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
                            'https://apps.apple.com/us/app/triplingo-business-class/id596556793');
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
                color: Colors.blue,
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
