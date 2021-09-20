import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';

import 'package:kidmoz/components/bottomText.dart';
import 'package:kidmoz/components/signupButtons.dart';
import 'package:kidmoz/components/textField.dart';
import 'package:kidmoz/modals/constants.dart';
import 'package:kidmoz/pages/signupScreen.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: size.width / 4,
                child: Image.asset("assets/images/logo.png"),
              ),
              SizedBox(height: 25),
              Text(
                "Welcome Back!",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: size.height / 20,
                    letterSpacing: 1),
              ),
              Text(
                "Login to your account",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: size.height / 50,
                    letterSpacing: 1),
              ),
              CustomTextField(),
              SignUpButtons(
                size: size,
                buttonText: "Continue",
              ),
              SizedBox(height: 25),
              SizedBox(height: 25),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: AlreadyText(
                  size: size,
                  text1: "Don't have an account?",
                  text2: "Sign up here",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
