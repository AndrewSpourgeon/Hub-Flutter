import 'package:flutter/material.dart';
import 'package:hub/browsers.dart';
import 'package:hub/business.dart';
import 'package:hub/food.dart';
import 'package:hub/health.dart';
import 'package:hub/kids.dart';
import 'package:hub/knowledge.dart';
import 'package:hub/men.dart';
import 'package:hub/movie.dart';
import 'package:hub/photo.dart';
import 'package:hub/shop.dart';
import 'package:hub/sports.dart';
import 'package:hub/student.dart';
import 'package:hub/tech.dart';
import 'package:hub/travel.dart';
import 'package:hub/women.dart';

class Menu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MenuState();
  }
}

class MenuState extends State<Menu> {
  Widget build(BuildContext context) {
    Color gradientEndColor = Color(0xFF9354B9);
    var sheight = MediaQuery.of(context).size.height;
    var swidth = MediaQuery.of(context).size.width;
    Widget createDrawerHeader() {
      return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [gradientEndColor, Colors.blue],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: [0.35, 1]),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 38.0,
              left: 25.0,
              child: new Row(
                children: [
                  new Text(
                    "Menu",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Apple',
                        fontSize: sheight / 30,
                        fontWeight: FontWeight.w500),
                  ),
                  new SizedBox(
                    width: sheight / 60,
                  ),
                  new Image.asset(
                    'assets/menu.png',
                    height: sheight / 30,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget createDrawerBodyItem({
      required Image icon,
      required String text,
      required GestureTapCallback onTap,
      required Widget sb,
    }) {
      return ListTile(
        title: Row(
          children: <Widget>[
            icon,
            sb,
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                text,
                style:
                    new TextStyle(fontFamily: 'Apple', fontSize: sheight / 38),
              ),
            )
          ],
        ),
        onTap: onTap,
      );
    }

    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(right: sheight / 5),
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
            icon: Image.asset(
              'assets/sports.png',
              height: sheight / 25,
            ),
            sb: SizedBox(
              width: sheight / 60,
            ),
            text: 'Sports',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Sports(),
                ),
              );
            },
          ),
          Divider(
            color: Colors.black,
          ),
          createDrawerBodyItem(
            icon: Image.asset(
              'assets/food.png',
              height: sheight / 25,
            ),
            sb: SizedBox(
              width: sheight / 60,
            ),
            text: 'Food',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Food(),
                ),
              );
            },
          ),
          Divider(
            color: Colors.yellow,
          ),
          createDrawerBodyItem(
            icon: Image.asset(
              'assets/health.png',
              height: sheight / 25,
            ),
            sb: SizedBox(
              width: sheight / 60,
            ),
            text: 'Health',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Health(),
                ),
              );
            },
          ),
          Divider(
            color: Colors.blue,
          ),
          createDrawerBodyItem(
            icon: Image.asset(
              'assets/browse.png',
              height: sheight / 25,
            ),
            sb: SizedBox(
              width: sheight / 60,
            ),
            text: 'Browsers',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Browse(),
                ),
              );
            },
          ),
          Divider(color: Colors.green),
          createDrawerBodyItem(
            icon: Image.asset(
              'assets/business.png',
              height: sheight / 25,
            ),
            sb: SizedBox(
              width: sheight / 60,
            ),
            text: 'Business',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Business(),
                ),
              );
            },
          ),
          Divider(color: Colors.orange),
          createDrawerBodyItem(
            icon: Image.asset(
              'assets/kids.png',
              height: sheight / 25,
            ),
            sb: SizedBox(
              width: sheight / 60,
            ),
            text: 'Kids',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Kid(),
                ),
              );
            },
          ),
          Divider(color: Colors.purple),
          createDrawerBodyItem(
            icon: Image.asset(
              'assets/knowledge.png',
              height: sheight / 25,
            ),
            sb: SizedBox(
              width: sheight / 60,
            ),
            text: 'Knowledge',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Know(),
                ),
              );
            },
          ),
          Divider(color: Colors.red),
          createDrawerBodyItem(
            icon: Image.asset(
              'assets/men.png',
              height: sheight / 25,
            ),
            sb: SizedBox(
              width: sheight / 60,
            ),
            text: 'Men',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Men(),
                ),
              );
            },
          ),
          Divider(color: Colors.black),
          createDrawerBodyItem(
            icon: Image.asset(
              'assets/women.png',
              height: sheight / 25,
            ),
            sb: SizedBox(
              width: sheight / 60,
            ),
            text: 'Women',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Women(),
                ),
              );
            },
          ),
          Divider(color: Colors.orange),
          createDrawerBodyItem(
            icon: Image.asset(
              'assets/photography.png',
              height: sheight / 25,
            ),
            sb: SizedBox(
              width: sheight / 60,
            ),
            text: 'Photography',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Photo(),
                ),
              );
            },
          ),
          Divider(color: Colors.green),
          createDrawerBodyItem(
            icon: Image.asset(
              'assets/shopping.png',
              height: sheight / 25,
            ),
            sb: SizedBox(
              width: sheight / 60,
            ),
            text: 'Shopping',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Shop(),
                ),
              );
            },
          ),
          Divider(color: Colors.purple),
          createDrawerBodyItem(
            icon: Image.asset(
              'assets/student.png',
              height: sheight / 25,
            ),
            sb: SizedBox(
              width: sheight / 60,
            ),
            text: 'Student',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Student(),
                ),
              );
            },
          ),
          Divider(color: Colors.red),
          createDrawerBodyItem(
            icon: Image.asset(
              'assets/tech.png',
              height: sheight / 25,
            ),
            sb: SizedBox(
              width: sheight / 60,
            ),
            text: 'Technology',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Tech(),
                ),
              );
            },
          ),
          Divider(color: Colors.black),
          createDrawerBodyItem(
            icon: Image.asset(
              'assets/travel.png',
              height: sheight / 25,
            ),
            sb: SizedBox(
              width: sheight / 60,
            ),
            text: 'Travel',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Travel(),
                ),
              );
            },
          ),
          Divider(
            color: Colors.blue,
            height: sheight / 40,
          ),
          createDrawerBodyItem(
            icon: Image.asset(
              'assets/movie.png',
              height: sheight / 25,
            ),
            sb: SizedBox(
              width: sheight / 60,
            ),
            text: 'Movie',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Movie(),
                ),
              );
            },
          ),
          Divider(color: Colors.yellow),
          ListTile(
            title: Text(
              'Thanks for downloading HUB',
              style: new TextStyle(
                fontFamily: 'Apple',
                fontSize: sheight / 50,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
