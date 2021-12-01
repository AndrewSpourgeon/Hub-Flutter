import 'package:flutter/material.dart';
import 'package:hub/menu.dart';
import 'package:hub/selection.dart';
import 'package:url_launcher/url_launcher.dart';

class Kid extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return KidState();
  }
}

class KidState extends State<Kid> {
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
              'Kids',
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
              'assets/kids.png',
              height: sheight / 18,
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
            'https://images.pexels.com/photos/3850057/pexels-photo-3850057.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
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
                    'assets/ikid.png',
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
                        color: Colors.purple.shade600,
                      ),
                      new SizedBox(
                        width: sheight / 100,
                      ),
                      new Text(
                        'Click on web icon to visit the website',
                        style: new TextStyle(
                            fontFamily: 'Apple',
                            fontSize: sheight / 45,
                            color: Colors.purple.shade600),
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
                        '1.Peep and the big wide world',
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
                          launch('http://www.peepandthebigwideworld.com/en/');
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
                    'PEEP and the Big Wide World is a fun and interactive educational site for three- to five-year-olds. The site has plenty to do for the little ones and gives parents plenty of educational resources. There are coloring pages along with games, and the site offers activities for parents and kids to do offline.',
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
                              'https://play.google.com/store/tv/show/PEEP_and_the_Big_Wide_World?id=3Fd1ytNPHzw&hl=en&gl=US');
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
                              'https://apps.apple.com/us/app/peep-and-the-big-wide-world-paint-splat/id536621786');
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
                        '2.Funology',
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
                          launch('https://www.funology.com/');
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
                    'Funology touts itself as being “the science of having fun!” Kids will love the magic tricks, allowing them to impress their family and friends. Parents will love the many crafts pages and the blog that reviews games and more.',
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
                          launch('https://www.funology.com/');
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
                          launch('https://www.funology.com/');
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
                        '3.The great plant escape',
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
                          launch(
                              'https://web.extension.illinois.edu/gpe/gpe.html');
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
                    'The Great Plant Escape is geared toward children in fourth or fifth grades. The site is an extension from the University of Illinois and is geared to teach kids about plants and their systems through problem-solving. Activities are structured to strengthen a child’s math, science, social studies, and even art. ',
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
                              'https://web.extension.illinois.edu/gpe/gpe.html');
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
                              'https://web.extension.illinois.edu/gpe/gpe.html');
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
                        '4.Switch Zoo',
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
                          launch('https://www.switchzoo.com/');
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
                    'This site is a true joy, even parents may beg for a turn to figure out where a certain species of animal is from. Switch Zoo has plenty of games to keep kids occupied. Parents will appreciate the fact that kids are learning as they play.  Kids will delight in making their own animal, building the right habitats, and a great deal more.',
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
                              'https://play.google.com/store/apps/details?id=air.com.tubehead.switchzoo.paid&hl=en_US&gl=US');
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
                              'https://apps.apple.com/us/app/switch-zoo/id629236482');
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
                        '5.Kodable',
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
                          launch('http://www.kodable.com/');
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
                    'Kodable teaches children aged five to six years old how to write computer code. Kids learn through a self-guided game. ',
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
                          launch('http://www.kodable.com/');
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
                              'https://apps.apple.com/us/app/kodable/id577673067');
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
                        '6.Fun Brain',
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
                          launch('https://www.funbrain.com/');
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
                    'This site is just right for school-aged kids, from kindergarten to the eighth grade. Funbrain mixes the educational with games that are simply all-out fun. ',
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
                          launch('https://www.funbrain.com/');
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
                          launch('https://www.funbrain.com/');
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
                        '7.ABCya',
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
                          launch('https://www.abcya.com/');
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
                    'Kids will love the many games in the language arts, math, and more. Parents will love the fact that there are no downloads, plus the fact that no personal information is required for game play. The games also sharpen a child’s computer skills with typing games.',
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
                              'https://play.google.com/store/apps/details?id=com.abcya.android.games&hl=en_IN&gl=US');
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
                              'https://apps.apple.com/us/app/abcya-games/id1079974015');
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
                        '8.CryptoKids',
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
                          launch('https://www.nsa.gov/');
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
                    'Here kids learn all about cyphers and making secret codes. Budding cryptographers learn how to scramble messages and passwords. There is no need to provide an e-mail for kids to have fun on the site.',
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
                          launch('https://www.nsa.gov/');
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
                          launch('https://www.nsa.gov/');
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
                        '9.Chillola',
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
                          launch('http://www.chillola.com/index.html/');
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
                    'Chillola.com is a way for children from around the world to interact with one another and learn another language. Educational and fun, Chillola offers the chance to learn English, Spanish, German, French, or Italian. Kids interact through sharing their works of art, poems, and more. ',
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
                          launch('http://www.chillola.com/index.html/');
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
                          launch('http://www.chillola.com/index.html/');
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
                        '10.Amazing Space',
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
                          launch(
                              'https://hubblesite.org/resource-gallery/learning-resources/amazing-space.html');
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
                    'The site is better suited to older children, as there are no games. However, kids will be able to see outer space through the Hubble telescope, or catch a glimpse of their own night sky online.',
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
                              'https://hubblesite.org/resource-gallery/learning-resources/amazing-space.html');
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
                              'https://hubblesite.org/resource-gallery/learning-resources/amazing-space.html');
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
                        '11.4Kids',
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
                          launch('http://4kids.org/');
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
                    'There are plenty of games and opportunities to explore the news that’s important to kids. Kids can also rate and report on sites they find entertaining in the ‘cool spots’ tab. Parents can keep up with what their kids are reading about in the news that is important to their children.',
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
                              'https://play.google.com/store/apps/details?id=usa4kids.sacramento4kids&hl=en&gl=US');
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
                          launch('http://4kids.org/');
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
          ),
        ),
      ),
    ));
  }
}
