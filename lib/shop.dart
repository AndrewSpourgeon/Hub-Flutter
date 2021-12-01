import 'package:flutter/material.dart';
import 'package:hub/menu.dart';
import 'package:hub/selection.dart';
import 'package:url_launcher/url_launcher.dart';

class Shop extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ShopState();
  }
}

class ShopState extends State<Shop> {
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
            color: Colors.purpleAccent.shade700,
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
                color: Colors.purpleAccent.shade700,
              ),
            ),
          ),
        ],
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              'Shopping',
              style: new TextStyle(
                fontFamily: 'Apple',
                fontSize: 25,
                color: Colors.purpleAccent.shade700,
              ),
            ),
            new SizedBox(
              width: sheight / 90,
            ),
            new Image.asset(
              'assets/shopping.png',
              height: sheight / 18,
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1611279522012-6c3e2d2c604f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80',
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
                  'assets/ishop.png',
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
                      color: Colors.purpleAccent.shade400,
                    ),
                    new SizedBox(
                      width: sheight / 100,
                    ),
                    new Text(
                      'Click on web icon to visit the website',
                      style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: sheight / 45,
                          color: Colors.purpleAccent.shade400),
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
                      '1.Flipkart',
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
                        launch('https://www.flipkart.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.purple,
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
                  'Definitely expected.Better UI , understandable reviews and images and neatly designed product specificaations.Actually flipkart is a bit faster than amazon.',
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
                            'https://play.google.com/store/apps/details?id=com.flipkart.android&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/in/app/flipkart-online-shopping-app/id742044692');
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
                color: Colors.purple,
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
                      '2.Amazon',
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
                        launch('https://www.amazon.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.purple,
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
                  'Not a wrong publicity.But amazon only good and fast for prime users.',
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
                            'https://play.google.com/store/apps/details?id=in.amazon.mShop.android.shopping&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/amazon-shopping/id297606951');
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
                color: Colors.purple,
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
                      '3.Myntra',
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
                        launch('https://www.myntra.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.purple,
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
                  'Myntra is well known in India, more for its funny ads than services.Myntra is particularly famous for the clothing variety it offers to men and women. They offer some classy wears for great prices. They also seem to be up to date with the latest trends in the market. It is one of the first choices for fashion enthusiasts in India.',
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
                            'https://play.google.com/store/apps/details?id=com.myntra.android&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/in/app/myntra-fashion-shopping-app/id907394059');
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
                color: Colors.purple,
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
                      '4.Ajio',
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
                        launch('https://www.ajio.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.purple,
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
                  'AJIO android apps are behind their iOS apps. It brings the best selection of international brands and with a giant like Reliance, holding it, buying and selling products through AJIO is a long-standing investment. ',
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
                            'https://play.google.com/store/apps/details?id=com.ril.ajio&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/in/app/ajio-online-shopping-app/id1113425372');
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
                color: Colors.purple,
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
                      '5.Shein',
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
                        launch('https://www.shein.in/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.purple,
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
                  'Whether it is trendy western clothes, or beach wares, swimsuits, and any other woman-centric items of clothing, SHEIN should be your first option.Best for customer service also.',
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
                            'https://play.google.com/store/apps/details?id=com.zzkko&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/shein-fashion-shopping-online/id878577184');
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
                color: Colors.purple,
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
                      '6.Nykaa',
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
                        launch('https://www.nykaa.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.purple,
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
                  'The specialty of  Nykaa is to deliver area specific skin tone based products. It seems to be a team with in-depth research in its area of work and quality to strive for perfection is undoubtedly pushing this online shopping app in India to fame.t is the best place for mother and baby products.',
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
                            'https://play.google.com/store/apps/details?id=com.fsn.nykaa&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/in/app/nykaa-makeup-beauty-shopping/id1022363908');
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
                color: Colors.purple,
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
                      '7.Club factory',
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
                        launch('https://www.clubfactory.net.in/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.purple,
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
                  'Club factory has hit immense success in the store mode of business. And is slowly growing in the app department as well. The primary factor driving it is the multiple brands it allows you to combine in your single order, and the dip point is the time it takes to deliver. ',
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
                            'https://play.google.com/store/apps/details?id=club.fromfactory&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/club-factory-unbeaten-price/id1112879717');
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
                color: Colors.purple,
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
                      '8.Voonik',
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
                        launch('https://voonik.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.purple,
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
                  'Be it Kancheepuram silk sarees or Uppada handloom; you have it all here in this one comprehensive app. ',
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
                            'https://play.google.com/store/apps/details?id=com.mrvoonik.android&hl=en_IN&gl=US');
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
                        launch('https://voonik.com/');
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
                color: Colors.purple,
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
                      '9.Shop clues',
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
                        launch('https://www.shopclues.com/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.purple,
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
                  'Known for its great selection, known price, and speedy delivery, ShopClues is rightly tagged the Band of Trust. Gadgets, home decor, clothing, home appliances, sports essentials, food, and beverages- ShopClues covers everything you need.',
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
                            'https://play.google.com/store/apps/details?hl=en&id=com.shopclues');
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
                            'https://apps.apple.com/in/app/shopclues/id994486085');
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
                color: Colors.purple,
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
                      '10.OLX',
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
                        launch('https://www.olx.in/');
                      },
                      child: new Image.asset(
                        'assets/web.png',
                        height: sheight / 25,
                        color: Colors.purple,
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
                  'Buy and Sell',
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
                            'https://play.google.com/store/apps/details?id=com.olx.southasia&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/in/app/olx-buy-sell-near-you/id913492792');
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
                color: Colors.purple,
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
