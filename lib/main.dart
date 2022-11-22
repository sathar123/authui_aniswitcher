
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'LoginForm.dart';
import 'SingupForm.dart';

void main() {
  runApp(MaterialApp(
    home: AuthUI(),
  ));
}

class AuthUI extends StatefulWidget {
  const AuthUI({Key? key}) : super(key: key);

  @override
  State<AuthUI> createState() => _AuthUIState();
}

class _AuthUIState extends State<AuthUI> {
  late bool formVisible;
  int? formsIndex;

  @override
  void initState() {
    super.initState();
    formVisible = false;
    formsIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: data.height,
          width: data.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://www.itl.cat/pngfile/big/316-3162573_dark-blue-wallpapers-hd-light.jpg'),
                  fit: BoxFit.cover)),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets.only(top: kToolbarHeight + 58.0),
                        child: Text(
                          'Welcome',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              letterSpacing: 1),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Welcome to this awesome login app.\n You are awesome',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                      Colors.white.withOpacity(.3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(20))),
                                  onPressed: () {
                                    setState(() {
                                      formVisible = true;
                                      formsIndex = 1;
                                    });
                                  },
                                  child: Text('Login'))),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                      Colors.white.withOpacity(.3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(20))),
                                  onPressed: () {
                                    setState(() {
                                      formVisible = true;
                                      formsIndex = 2;
                                    });
                                  },
                                  child: Text('Signup'))),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.white54, width: 3),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.google),
                        label: Text(
                          'Continue with Google',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  )
                ],
              ),
              AnimatedSwitcher(
                duration: Duration(milliseconds: 200),
                child: (!formVisible)
                    ? null
                    : Container(
                  color: Colors.black45,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: (formsIndex == 1)? Colors.red : Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                              ),
                              onPressed: () {
                                setState(() {
                                  formsIndex = 1;
                                });
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(color: (formsIndex == 1)?Colors.white : Colors.black),
                              )),
                          SizedBox(width: 10,),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: (formsIndex == 2)? Colors.red : Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                              ),
                              onPressed: () {
                                setState(() {
                                  formsIndex = 2;
                                });
                              },
                              child: Text(
                                'Signup',
                                style: TextStyle(color: (formsIndex == 1)?Colors.black : Colors.white),
                              )),
                          const SizedBox(width: 10.0),
                          IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.clear),
                            onPressed: () {
                              setState(() {
                                formVisible = false;
                              });
                            },
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: AnimatedSwitcher(duration: Duration(milliseconds: 300),
                          child: (formsIndex ==1)? LoginForm() : SingupForm(),
                        ),
                      )
                    ],
                  ),
                ),
              ),


            ],
          )),
    );
  }
}
