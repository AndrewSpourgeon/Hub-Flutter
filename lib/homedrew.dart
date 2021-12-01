import 'utils.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeDrew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          leading: ElevatedButton(
            child: Icon(Icons.arrow_back_rounded),
            style: ElevatedButton.styleFrom(
              primary: Colors.purple,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.home_sharp,
                  size: 26.0,
                ),
              ),
            ),
          ],
          title: Text(
            'About the Creator',
            style: new TextStyle(
              fontFamily: 'Apple',
              fontSize: 25,
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: new Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 45,
                ),
                new Container(
                  padding: EdgeInsets.only(left: 60, right: 60),
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/drewp.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                new Container(
                  padding: EdgeInsets.only(left: 60, right: 60),
                  child: Column(
                    children: [
                      new Text(
                        'Andrew Spourgeon',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            '(Drew)',
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              color: Colors.purple,
                              fontSize: 25,
                            ),
                          ),
                          new Icon(
                            Icons.person_rounded,
                            size: 30.0,
                            color: Colors.purple,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                new Container(
                  padding: EdgeInsets.only(right: 60, left: 60),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star_sharp,
                        size: 35,
                        color: Colors.blue.shade600,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Student at Lendi',
                        style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                new Container(
                  padding: EdgeInsets.only(right: 60, left: 60),
                  child: Row(
                    children: [
                      Icon(
                        Icons.no_accounts_sharp,
                        size: 35,
                        color: Colors.yellow.shade700,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        '0 certificates/courses',
                        style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                new Container(
                  padding: EdgeInsets.only(right: 60, left: 60),
                  child: Row(
                    children: [
                      Icon(
                        Icons.android_sharp,
                        size: 35,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Android App building',
                        style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                new Container(
                  padding: EdgeInsets.only(right: 60, left: 60),
                  child: Row(
                    children: [
                      Icon(
                        Icons.color_lens_sharp,
                        size: 35,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Pretty good at drawing',
                        style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                new Container(
                  padding: EdgeInsets.only(right: 60, left: 60),
                  child: Row(
                    children: [
                      new Container(),
                      SvgPicture.asset(
                        'assets/apple.svg',
                        height: 35,
                        width: 35,
                        fit: BoxFit.scaleDown,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Create',
                        style: new TextStyle(
                          fontFamily: 'Apple',
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                new Container(
                  padding: EdgeInsets.only(right: 40, left: 40),
                  child: Text(
                    'I wrote the line just to make sure you will  waste 5 seconds of time in your life.',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: 21,
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                new Container(
                  padding: EdgeInsets.only(right: 40, left: 40),
                  child: new Row(
                    children: [
                      Icon(
                        Icons.contact_mail_sharp,
                        size: 33,
                        color: Colors.purple,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Can Contact me here:',
                        style: new TextStyle(fontFamily: 'Apple', fontSize: 23),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                new Container(
                  child: GestureDetector(
                    onTap: () => launch('https://wa.me/916303961320'),
                    child: SvgPicture.asset(
                      'assets/whatsapp.svg',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                new Container(
                  child: GestureDetector(
                    onTap: () => launch(
                        'https://discordapp.com/users/736161218577825842'),
                    child: SvgPicture.asset(
                      'assets/discord.svg',
                      height: 55,
                      width: 55,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                new Container(
                  child: GestureDetector(
                    onTap: () =>
                        launch('https://www.instagram.com/andrew_spourgeon/'),
                    child: SvgPicture.asset(
                      'assets/instagram.svg',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                new Container(
                  child: GestureDetector(
                    onTap: () => Utils.openEmail(
                      toEmail: 'andrewspourgeon@gmail.com',
                      subject: 'Hello Drew:)',
                    ),
                    child: SvgPicture.asset(
                      'assets/gmail.svg',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                new Container(
                  child: GestureDetector(
                    onTap: () => launch('https://twitter.com/ASpourgeon'),
                    child: SvgPicture.asset(
                      'assets/twitter.svg',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                new Container(
                  child: GestureDetector(
                    onTap: () => launch('https://github.com/AndrewSpourgeon'),
                    child: SvgPicture.asset(
                      'assets/github.svg',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                new Container(
                  child: GestureDetector(
                    onTap: () => launch(
                        'https://www.facebook.com/profile.php?id=100008269328597'),
                    child: SvgPicture.asset(
                      'assets/facebook.svg',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                new Container(
                  padding: EdgeInsets.only(left: 60, right: 60),
                  child: Text(
                    'Thanks for downloading HUB',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: 22,
                    ),
                  ),
                ),
                new SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
