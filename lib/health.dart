import 'package:flutter/material.dart';
import 'package:hub/menu.dart';
import 'package:hub/selection.dart';
import 'package:url_launcher/url_launcher.dart';

class Health extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HealthState();
  }
}

class HealthState extends State<Health> {
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
            color: Colors.green,
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
                color: Colors.green,
              ),
            ),
          ),
        ],
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              'Health',
              style: new TextStyle(
                fontFamily: 'Apple',
                fontSize: 25,
                color: Colors.green,
              ),
            ),
            new SizedBox(
              width: sheight / 90,
            ),
            new Image.asset(
              'assets/health.png',
              height: sheight / 22,
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
            'https://images.pexels.com/photos/4167542/pexels-photo-4167542.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
          ),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
          child: SingleChildScrollView(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /*new SizedBox(
                  height: sheight / 20,
                ),*/
                new Container(
                  child: new Image.asset(
                    'assets/ihealth.png',
                    height: sheight / 7,
                  ),
                ),
                new SizedBox(
                  height: sheight / 8,
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
                        '1.Healthline',
                        style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: sheight / 30,
                        ),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://www.healthline.com/');
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
                    'I donot hesitate to say this is the best website to learn about health.This is my personal favourite too.Articles,podcasts,trending topics and many more from the best certified doctors and physiologists around the world.Definitely helps!',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: sheight / 45,
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
                              'https://play.google.com/store/apps/developer?id=Healthline&hl=en_US&gl=US');
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
                              'https://apps.apple.com/us/developer/healthline-media-inc/id437304328');
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
                        '2.National Institute of health',
                        style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: sheight / 30,
                        ),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://www.nih.gov/');
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
                    'The National Institutes of Health (NIH) is the largest source of medical research funding in the world and to compliment its operations it boasts one of the internet’s most popular healthcare websites.It’s health information is mainly categorised by age groups gender; Child & Teen Health, Men’s Health, Women’s Health, Minority Health and Seniors’ Health.',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: sheight / 45,
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
                          launch('https://www.nih.gov/');
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
                          launch('https://www.nih.gov/');
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
                        '3.Kids Health',
                        style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: sheight / 30,
                        ),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://kidshealth.org/');
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
                    'Don\'t think this website is only for kids by just looking at the name.This one is for all age groups.It has four different areas to it; advice for parents, homework help for children, advice for teenagers and teaching aids for educators. Just search for your age category and I bet this web will makes your life more healthy and happy if and only if you execute them.',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: sheight / 45,
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
                              'https://play.google.com/store/apps/details?id=org.nemours.android.mynemours&hl=en_US&gl=US');
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
                          launch('https://kidshealth.org/');
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
                        '4.Drugs',
                        style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: sheight / 30,
                        ),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://www.drugs.com/');
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
                    '“Drugs.com is the most popular, comprehensive and up-to-date source of drug information online,” the website proudly declares. The independent portal presents information and data on 24,000 prescription medications and serves both healthcare professionals and consumers. This material is provided for educational purposes only and is not intended for medical advice, diagnosis or treatment.',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: sheight / 45,
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
                              'https://play.google.com/store/apps/details?id=com.drugscom.app&hl=en_IN&gl=US');
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
                              'https://apps.apple.com/us/app/drugs-com-medication-guide/id599471042');
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
                        '5.Weight Watchers',
                        style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: sheight / 30,
                        ),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://www.weightwatchers.com/us/');
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
                    'One of the most popular commercial diet plans around the world.WW offers a scientifically proven program for weight loss and wellness, with Digital, in-person and Virtual Workshops, and Personal Coaching solutions to help meet your goals. For more than 55 years, WW has helped millions lose weight with the latest nutritional and behavior change science.',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: sheight / 45,
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
                              'https://play.google.com/store/apps/details?id=com.weightwatchers.mobile&hl=en_IN&gl=US');
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
                              'https://apps.apple.com/us/app/ww-weight-watchers-reimagined/id331308914');
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
                        '6.Net Doctor',
                        style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: sheight / 30,
                        ),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://www.netdoctor.co.uk/');
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
                    'With thousands of pages of advice on all aspects of health and wellbeing, NetDoctor offers in-depth information that people can trust, written by experts in their respective fields.NetDoctor is reportedly the UK’s leading independent health website, which aims to “break down the medical language barrier” between doctors and patients. ',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: sheight / 45,
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
                          launch('https://www.netdoctor.co.uk/');
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
                          launch('https://www.netdoctor.co.uk/');
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
                        '7.NetMeds',
                        style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: sheight / 30,
                        ),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://www.netmeds.com/');
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
                    'India\'s most trusted online pharmacy.Download the easy-to-use Netmeds App to conveniently order your medicines from anywhere, at anytime. Just tap the App, upload your required medicines, and your order will be delivered anywhere in India. Use the Netmeds healthcare app to Order/Refill Your Medicines, Consult a Doctor Online, Book Lab Tests Online, Track Your Order, Rate Items, Refer Your Friends & Earn, or Contact Us on the go!',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: sheight / 45,
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
                              'https://play.google.com/store/apps/details?id=com.NetmedsMarketplace.Netmeds&hl=en_IN&gl=US');
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
                              'https://apps.apple.com/in/app/netmeds-india-ki-pharmacy/id1011070011');
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
                        '8.Men\'s Health',
                        style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: sheight / 30,
                        ),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://www.menshealth.com/');
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
                    'Men\'s Health editors, reporters, and licensed experts give men the tools they need to make their lives better through in-depth, service-minded journalism. From deeply reported features to daily coverage of trends in the worlds of health and wellness, our experienced staff covers fitness, nutrition, style, grooming, technology & gear, entertainment and more.',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: sheight / 45,
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
                              'https://play.google.com/store/apps/details?id=com.maz.combo89&hl=en&gl=US');
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
                              'https://apps.apple.com/us/app/mens-health-magazine/id466951815');
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
                        '9.Mayo Clinic',
                        style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: sheight / 30,
                        ),
                      ),
                      new SizedBox(
                        width: sheight / 60,
                      ),
                      new GestureDetector(
                        onTap: () {
                          launch('https://www.mayoclinic.org/');
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
                    'Award-winning medical and health information for healthy living.A team of specialists will listen to your needs and evaluate your condition from every angle to make the very best plan for you.',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: sheight / 45,
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
                              'https://play.google.com/store/apps/details?id=com.mayoclinic.patient&hl=en_IN&gl=US');
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
                              'https://apps.apple.com/us/app/mayo-clinic/id523220194');
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
          ),
        ),
      ),
    ));
  }
}
