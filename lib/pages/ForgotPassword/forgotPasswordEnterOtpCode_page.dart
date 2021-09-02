import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

import 'forgotPasswordEnterPassword_page.dart';

// ignore: must_be_immutable
class ForgotPasswordEnterOtpCodePage extends StatefulWidget {
  final VoidCallback ontap;
  String phoneno;
  String email;
  // OtpResponseModel otpModel;
  ForgotPasswordEnterOtpCodePage(
      {Key? key,
      required this.ontap,
      required this.phoneno,
      required this.email})
      : super(key: key);

  @override
  _ForgotPasswordEnterOtpCodePageState createState() =>
      _ForgotPasswordEnterOtpCodePageState();
}

class _ForgotPasswordEnterOtpCodePageState
    extends State<ForgotPasswordEnterOtpCodePage> {
  TextEditingController one = TextEditingController();

  TextEditingController two = TextEditingController();

  TextEditingController three = TextEditingController();

  TextEditingController four = TextEditingController();

  TextEditingController five = TextEditingController();

  TextEditingController six = TextEditingController();

  String errormessage = '';
  Timer _timer = new Timer(Duration(), () {});
  int _start = 46;
  String otpCode = "";

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
  
    super.initState();

    startTimer();
  }

  void setOtpText(String text) {
    otpCode = otpCode + text;
  }

  void focusOnNextNode(FocusScopeNode node, String text) {
    // ignore: unnecessary_null_comparison
    if (text != null && text != "") {
      node.nextFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);

    return Scaffold(
      appBar: defaultAppBar(
        titleText: '',
        leading: (IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            })),
      ),
      body: Container(
        width: 800.0,
        color: whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Text(
              "Enter 6-digit code",
              style: titleStyle1,
            ),
            Text(
                "We've sent it to " +
                    // ignore: unnecessary_null_comparison
                    (widget.phoneno == null ? "" : widget.phoneno) +
                    "and to" +
                    // ignore: unnecessary_null_comparison
                    (widget.email == null ? "" : widget.email),
                style: TextStyle(fontSize: 16.0, color: primaryColor)),
            // Text("and to" + (widget.phoneno == null ? "" : widget.phoneno),
            //     style: TextStyle(fontSize: 16.0, color: fromHex("#02B6FF"))),
            Padding(
              padding: const EdgeInsets.only(
                  left: 50.0, right: 50.0, top: 50.0, bottom: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: one,
                      keyboardType: TextInputType.phone,
                      onChanged: (context) {
                        focusOnNextNode(node, one.text);
                        //node.nextFocus();
                        setOtpText(one.text);
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: two,
                      keyboardType: TextInputType.phone,
                      onChanged: (context) {
                        focusOnNextNode(node, two.text);
                        //node.nextFocus();
                        setOtpText(two.text);
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: three,
                      keyboardType: TextInputType.phone,
                      onChanged: (context) {
                        focusOnNextNode(node, three.text);
                        //node.nextFocus();
                        setOtpText(three.text);
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: four,
                      keyboardType: TextInputType.phone,
                      onChanged: (context) {
                        focusOnNextNode(node, four.text);
                        setOtpText(four.text);
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: five,
                      keyboardType: TextInputType.phone,
                      onChanged: (context) {
                        focusOnNextNode(node, five.text);
                        //node.nextFocus();
                        setOtpText(five.text);
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: six,
                      keyboardType: TextInputType.phone,
                      onChanged: (context) {
                        focusOnNextNode(node, six.text);
                        //node.nextFocus();
                        setOtpText(six.text);
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                errormessage,
                style: warningStyle,
              ),
            ),
            Text(
              'you can resend your code if it doesn\'t arrive in  0:' +
                  _start.toString(),
              style: messagestyle,
            ),

            SizedBox(
              height: 20,
            ),
            defaultButton(context, 'Continue', onPressed: () {
              openPage(context, (ctx) => ForgotPasswordEnterPasswordPage());
              // if (this.otpCode == widget.otpModel.otpcode) {
              //   widget.ontap();
              // } else {
              //   setState(() {
              //     otpCode = "";
              //     errormessage = "Invalid code";
              //   });
              // }
            }),
          ],
        ),
      ),
    );
  }
}
