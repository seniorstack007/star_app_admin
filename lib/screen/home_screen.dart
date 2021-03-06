import 'package:star_app_admin/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import widget
import 'package:star_app_admin/widgets/common_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  void onContinueWithEmail() {
    Navigator.of(context).pushReplacementNamed(SIGNUP_SCREEN);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {},
      child: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromRGBO(10, 16, 63, 0.4),
                  Color.fromRGBO(10, 16, 63, 0.2),
                  Color.fromRGBO(96, 81, 47, 0.2),
                  Color.fromRGBO(181, 146, 30, 0.075)
                ],
                    stops: [
                  0.0,
                  0.3821,
                  0.6867,
                  0.9913
                ])),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 200),
                  Image.asset(
                    'assets/images/logo.png',
                    width: 40,
                    height: 60,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Star App',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButtonCustom(
                          onTap: onContinueWithEmail,
                          text: "Continue With Email",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
