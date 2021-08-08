import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import 'login_page.dart';

class LoginOrSignupView extends StatefulWidget {
  LoginOrSignupView({Key? key}) : super(key: key);

  @override
  _LoginOrSignupViewState createState() => _LoginOrSignupViewState();
}

class _LoginOrSignupViewState extends State<LoginOrSignupView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
            color: primaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  width: MediaQuery.of(context).size.width / 2,
                  padding: EdgeInsets.all(5),
                  child: Image.asset(
                    'assets/images/moneyfex_logo.png',
                    height: 80,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Powering your business',
                  style: TextStyle(color: whiteColor, fontSize: 23),
                ),
                SizedBox(height: 85),
                defaultButton(context, 'Log in',
                    btnColor: whiteColor,
                    textColor: primaryColor, onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                }),
                SizedBox(height: 30),
                Container(
                  child: Row(children: <Widget>[
                    Expanded(
                        child: Divider(
                      color: whiteColor,
                      thickness: 1,
                    )),
                    Text("   OR   ",
                        style: TextStyle(color: whiteColor, fontSize: 30)),
                    Expanded(
                        child: Divider(
                      color: whiteColor,
                      thickness: 1,
                    )),
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: _launchURL,
                    child: Text('Sign up',
                        style: TextStyle(color: whiteColor, fontSize: 20))),
              ],
            )),
      ),
    );
  }

  String _url =
      "https://moneyfex.com/Agent/AgentRegistration/Index?AgentType=0";
  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch &_url';
}
