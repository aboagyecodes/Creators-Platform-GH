import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cyn_mainpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);


  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  var userName = '';
  var errorText = 'Please enter details';

  _checkUserName() {
    setState(() {
      userName = _usernameController.text;
    });
  }

  homePageLogin() {
    setState(() {
      if (_usernameController.text.toString().isNotEmpty &&
          _passwordController.text.toString().isNotEmpty) {
        return _navigateToMainPage();
      }
      else {
        setState(() {
          print(errorText);
        });

      }
    });
  }

  _navigateToMainPage() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MainPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            'images/coverpage_logo4.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 28.0, top: 30),
                child: Row(
                  children: [
                    Text(
                      'CYNET ',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.blue),
                    ),
                    Text(
                      '  v1.0',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.blue),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 350.0,
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                      'A NEW AND BETTER WAY TO GET YOUR DESIGNS AND MEET CUSTOMERS!',
                      style: GoogleFonts.lato(fontSize: 40)),
                ),
              ),
              Container(
                // height: MediaQuery.of(context).size.height - 100.0,
                height: 310,
                // width: 550,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(60.0))),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 12,
                    color: Colors.blueAccent.shade400,
                    shadowColor: Colors.cyanAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(30.0),
                          child: Wrap(
                            children: [
                              Text(
                                'WELCOME enter your details and click login >>>',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 19,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200),
                              )
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 12)),
                        Container(
                          height: 40,
                          child: Padding(
                            padding: EdgeInsets.only(left: 60, right: 12),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              controller: _usernameController,
                              decoration: InputDecoration(
                                  icon: Icon(Icons.perm_identity_rounded,
                                      color: Colors.white),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white70)),
                                  hintText: 'eg Charles Oakley',
                                  hintStyle: TextStyle(color: Colors.white),
                                  labelText: 'username',
                                  labelStyle: TextStyle(color: Colors.white),
                                  isDense: true,
                                  filled: true,
                                  fillColor: Colors.transparent),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 12)),
                        Container(
                          height: 40,
                          child: Padding(
                            padding: EdgeInsets.only(left: 60, right: 12),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              obscureText: true,
                              controller: _passwordController,
                              decoration: InputDecoration(
                                  icon: Icon(Icons.password_outlined,
                                      color: Colors.white),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.white70)),
                                  hintText: 'secure 6char code',
                                  hintStyle: TextStyle(color: Colors.white),
                                  labelText: 'password', labelStyle: TextStyle(color: Colors.white),
                                  isDense: true,
                                  filled: true,
                                  fillColor: Colors.transparent),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 12)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 4, left: 150),
                              child: OutlinedButton.icon(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    elevation: MaterialStateProperty.all(14),
                                  ),
                                  onPressed: () {
                                    _checkUserName();
                                    _navigateToMainPage();
                                  },
                                  icon: Icon(
                                    Icons.double_arrow_rounded,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    'login',
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
