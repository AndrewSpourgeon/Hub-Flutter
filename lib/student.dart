import 'package:flutter/material.dart';
import 'package:hub/menu.dart';
import 'package:hub/selection.dart';
import 'package:url_launcher/url_launcher.dart';

class Student extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StudentState();
  }
}

class StudentState extends State<Student> {
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
          child: Icon(
            Icons.menu_sharp,
            color: Colors.redAccent.shade400,
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
                color: Colors.redAccent.shade400,
              ),
            ),
          ),
        ],
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              'Student',
              style: new TextStyle(
                fontFamily: 'Apple',
                fontSize: 25,
                color: Colors.redAccent.shade400,
              ),
            ),
            new SizedBox(
              width: sheight / 90,
            ),
            new Image.asset(
              'assets/student.png',
              height: sheight / 18,
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
            'https://images.pexels.com/photos/5212335/pexels-photo-5212335.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
          ),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
            child: SingleChildScrollView(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /* new SizedBox(
                height: sheight / 30,
              ),*/
              new Container(
                child: new Image.asset(
                  'assets/istudent.png',
                  height: sheight / 9,
                ),
              ),
              new SizedBox(
                height: sheight / 14,
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
                height: sheight / 5,
              ),
              new Container(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Text(
                      '1.Student',
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
                        launch('https://www.student.com/');
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
                  'If you\'re looking for cheap accommodations as an international student, this website helps you search for a home near your college/university or a neighborhood of your choice. The site covers hundreds of cities and doesn\'t charge for the service.',
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
                            'https://play.google.com/store/apps/details?id=com.student.mobileapp');
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
                        launch('https://apps.apple.com/app/id1288515333');
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
                      '2.Forest',
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
                        launch('https://www.forestapp.cc/');
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
                  'This app takes on a creative approach to help you stay focused. Whenever you want to start a study session, you plant a tree in your in-app “forest”. As you work, the tree will begin to grow, but if you pick up your phone and leave the app, your tree dies! You can collect and add more trees to your forest the more you focus. The company even plants real trees in dozens of countries! It’s a win-win situation for you and the Earth.',
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
                            'https://play.google.com/store/apps/details?id=cc.forestapp&referrer=utm_source%3Dofficalwebsite%26utm_medium%3Dbutton');
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
                            'https://apps.apple.com/app/apple-store/id866450515?mt=8');
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
                      '3.RefMe',
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
                        launch('https://www.citethisforme.com/');
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
                  'This nifty app uses your phone\'s camera to scan a book\'s barcode and create a citation formatted in MLA, Chicago, or whatever format your school uses.',
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
                            'https://play.google.com/store/apps/details?id=com.refme&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/gb/app/citationsy/id1335116120');
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
                      '4.Office Lens',
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
                            'https://support.microsoft.com/en-us/office/office-lens-for-windows-577ec09d-8da2-4029-8bb7-12f8114f472a');
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
                  'This app from Microsoft takes pictures of documents, whiteboards, blackboards, magazines, receipts, and more and converts them into editable, shareable text. It can read images event from an angle and cleans up glare and shadows too.',
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
                            'https://play.google.com/store/apps/details?id=com.microsoft.office.officelens&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/microsoft-lens-pdf-scanner/id975925059');
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
                      '5.Evernote',
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
                        launch('https://evernote.com/');
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
                  'The app\'s biggest selling point is the ability to sync your notes across all devices, meaning you can type on your tablet and then access all your lecture notes on your laptop when it\'s essay time. Once they\'re saved, you can search for any word that appears in the text.',
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
                            'https://play.google.com/store/apps/details?id=com.evernote&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/evernote-notes-organizer/id281796108');
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
                      '6.Mathway',
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
                        launch('https://www.mathway.com/');
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
                  'All you have to do is type in your problem and Mathway will solve it for you. If you\'d like to know how to get the answer rather than just what it is, Mathway can also give a detailed step-by-step guide to finding the solution.',
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
                            'https://play.google.com/store/apps/details?id=com.bagatrix.mathway.android&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/mathway-math-problem-solver/id467329677');
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
                      '7.Any.do',
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
                        launch('https://www.any.do/');
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
                  'Like a lot of the apps on this list, Any.do allows you to sync everything across any compatible device. It also offers reminders, as well as the ability to share lists and assign tasks to different users – ideal for a group project, or making sure everyone in the house does their fair share of cleaning!',
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
                            'https://play.google.com/store/apps/details?id=com.anydo&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/any-do-to-do-list-calendar/id497328576');
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
                      '8.Oxford Dictionary',
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
                        launch('https://www.oxfordlearnersdictionaries.com/');
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
                  'People have gone for the Oxford English Dictionary (OED) because, well, it\'s the daddy of dictionaries. The OED is the ultimate authority on definitions, spelling and whether a word is actually a word',
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
                            'https://play.google.com/store/apps/details?id=com.mobisystems.msdict.embedded.wireless.oxford.dictionaryofenglish&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/oxford-dictionary-of-english/id978674211');
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
                      '9.Duolingo',
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
                        launch('https://www.duolingo.com/');
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
                  'Beat the clock and earn points with gamified language learning in over 30 courses, even Klingon. Read, listen, speak and receive instant grades and motivation.',
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
                            'https://play.google.com/store/apps/details?id=com.duolingo&hl=en');
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
                            'https://apps.apple.com/app/duolingo-learn-spanish-french-and-more/id570060128');
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
                      '10.Dropbox',
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
                        launch('https://www.dropbox.com/?landing=dbv2');
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
                  'No college student will be afraid of losing his notes or coursework anymore! Thanks to Dropbox, you have a chance to upload different files (documents, photos, videos) in the cloud and get them online whenever you need, even if you forget your phone at home. ',
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
                            'https://play.google.com/store/apps/details?id=com.dropbox.android');
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
                            'https://apps.apple.com/us/app/dropbox-cloud-storage-backup/id327630330');
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
                      '11.Scribd',
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
                        launch('https://www.scribd.com/');
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
                  'Welcome to the world’s biggest library online! Scribd helps students find millions of different documents and books that are important for your studies. All those data are shared by people from all over the world, and you can easily curate and organize them according to their topic.',
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
                            'https://play.google.com/store/apps/details?id=com.correctme.grammarhelp&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/correctme-english-grammar-help/id1193750579');
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
                      '11.CorrectMe',
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
                        launch('https://www.onlinecorrection.com/');
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
                  'To check whether the sentence you have written is correct or not.',
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
                            'https://play.google.com/store/apps/details?id=com.scribd.app.reader0');
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
                            'https://apps.apple.com/us/app/scribd-audiobooks-ebooks/id542557212');
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
              new Container(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Text(
                      '11.ProCreate',
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
                        launch('https://procreate.art/');
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
                  'Best Professional app for arts.',
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
                            'https://play.google.com/store/apps/details?id=paintingtutorials.paintingtutorials&hl=en_IN&gl=US');
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
                            'https://apps.apple.com/us/app/procreate/id425073498');
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
            ],
          ),
        )),
      ),
    ));
  }
}
