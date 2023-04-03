import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/image1.png",
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.0,
                // child: Text("abc"),
              ),
              Text("Welcome $name",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),

                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });

                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.ChatScreen);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 219, 113, 47),
                            // shape: changeButton
                            //     ? BoxShape.circle
                            //     : BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 50 : 8)),
                      ),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(
                    //     minimumSize: Size(150, 40),
                    //   ),
                    // )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
