/*import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'package:hub/main.dart';
import 'package:hub/selection.dart';

class Account extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AccountState();
  }
}

class AccountState extends State<Account> {
  bool _isloggedIn = false;

  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  _login() async {
    try {
      await _googleSignIn.signIn();
      setState(() {
        _isloggedIn = true;
      });
    } catch (err) {
      print(err);
    }
  }

  _logout() {
    _googleSignIn.signOut();
    setState(() {
      _isloggedIn = false;
    });
  }

  String get phrase {
    String? uname = _googleSignIn.currentUser!.displayName?.toString();

    String name;
    if (uname != null) {
      name = uname;
    } else {
      name = '';
    }
    return name;
  }

  String get userpic {
    String? upic = _googleSignIn.currentUser!.photoUrl?.toString();

    String pic;
    if (upic != null) {
      pic = upic;
    } else {
      pic = '';
    }
    return pic;
  }

  Widget build(BuildContext context) {
    var sheight = MediaQuery.of(context).size.height;
    var swidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text(
            'AUTHENTICATION',
            style: new TextStyle(
                fontFamily: 'Apple',
                fontSize: sheight / 35,
                color: Colors.black),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_sharp,
              size: sheight / 30,
              color: Colors.black,
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: _isloggedIn
                  ? new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new SizedBox(
                          height: sheight / 20,
                        ),
                        new Container(
                          child: new SvgPicture.asset(
                            'assets/account.svg',
                            color: Colors.green.shade700,
                            height: sheight / 7,
                            width: swidth / 0.2,
                          ),
                        ),
                        new SizedBox(
                          height: sheight / 12,
                        ),
                        new Container(
                          child: new Text(
                            'Welcome to HUB',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              fontSize: sheight / 35,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        new SizedBox(
                          height: sheight / 15,
                        ),
                        new Container(
                          child: new Text(
                            phrase,
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              fontSize: sheight / 30,
                              color: Colors.purple.shade800,
                            ),
                          ),
                        ),
                        new SizedBox(
                          height: sheight / 15,
                        ),
                        new Container(
                          //padding: EdgeInsets.only(left: 60, right: 60),
                          width: swidth,
                          height: sheight / 6,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(userpic),
                                fit: BoxFit.contain),
                          ),
                        ),
                        new SizedBox(
                          height: sheight / 12,
                        ),
                        new Container(
                          child: new ElevatedButton(
                            onPressed: () {
                              _logout();
                            },
                            child: new Text(
                              'Logout',
                              style: new TextStyle(
                                fontFamily: 'Apple',
                                fontSize: sheight / 33,
                              ),
                            ),
                            style: (ElevatedButton.styleFrom(
                              primary: Colors.black,
                              padding: EdgeInsets.symmetric(
                                  horizontal: swidth / 10,
                                  vertical: sheight / 100),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(60.0),
                              ),
                            )),
                          ),
                        ),
                        new SizedBox(
                          height: sheight / 12,
                        ),
                        new Container(
                          child: new GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Selection(),
                                ),
                              );
                            },
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                new Text(
                                  'Dive In',
                                  style: TextStyle(
                                      color: Colors.green.shade900,
                                      fontSize: swidth / 20,
                                      fontFamily: 'Apple'),
                                ),
                                new SizedBox(
                                  width: sheight / 200,
                                ),
                                new Icon(Icons.arrow_forward_ios,
                                    size: swidth / 20, color: Colors.black),
                              ],
                            ),
                          ),
                        ),
                        new SizedBox(
                          height: sheight / 20,
                        ),
                      ],
                    )
/*
























*/
                  : new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new SizedBox(
                          height: sheight / 15,
                        ),
                        new Container(
                          child: new SvgPicture.asset(
                            'assets/adduser.svg',
                            color: Colors.cyan.shade600,
                            height: sheight / 10,
                            width: swidth / 0.2,
                          ),
                        ),
                        new SizedBox(
                          height: sheight / 8,
                        ),
                        new Container(
                          child: new Text(
                            'Sign Up to continue',
                            style: new TextStyle(
                              fontFamily: 'Apple',
                              color: Colors.black,
                              fontSize: swidth / 18,
                            ),
                          ),
                        ),
                        new SizedBox(
                          height: sheight / 6,
                        ),
                        new Container(
                          padding: EdgeInsets.only(
                            left: swidth / 6,
                            right: swidth / 8,
                          ),
                          child: new ElevatedButton(
                            onPressed: () {
                              _login();
                            },
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                new Image.asset(
                                  'assets/google.png',
                                  height: sheight / 33,
                                ),
                                new SizedBox(
                                  width: swidth / 25,
                                ),
                                new Text(
                                  'Log In with Google',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: swidth / 20,
                                      fontFamily: 'Apple'),
                                ),
                              ],
                            ),
                            style: (ElevatedButton.styleFrom(
                              primary: Colors.black,
                              //elevation: 12,
                              padding: EdgeInsets.symmetric(
                                  horizontal: swidth / 12,
                                  vertical: sheight / 70),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(60.0),
                              ),
                            )

                            ),
                          ),
                        ),
                        new SizedBox(
                          height: sheight / 8,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Icon(
                              Icons.lock_rounded,
                              size: sheight / 34,
                            ),
                            new SizedBox(
                              width: 10,
                            ),
                            new Text(
                              "The data is safe with us.",
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontFamily: 'Apple',
                                fontSize: sheight / 39,
                                color: Colors.green.shade900,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
        ),
      ),
    );
  }
}
*/