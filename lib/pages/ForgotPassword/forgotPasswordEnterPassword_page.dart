import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/pages/SuccessPages/sucess_page.dart';
import 'package:moneyfex_auxagent/pages/login_page.dart';
import 'package:moneyfex_auxagent/utils/constants.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

class ForgotPasswordEnterPasswordPage extends StatefulWidget {
  //ChangePasswordModel model;
  ForgotPasswordEnterPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordEnterPasswordPageState createState() =>
      _ForgotPasswordEnterPasswordPageState();
}

class _ForgotPasswordEnterPasswordPageState
    extends State<ForgotPasswordEnterPasswordPage> {
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  bool _isHidden = true;
  bool _isconfirmHidden = true;
  String errormessage = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: defaultAppBar(
          titleText: 'Reset password',
          leading: (IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              })),
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 40, left: 40, top: 50),
          child: Column(
            children: [
              TextFormField(
                controller: passwordcontroller,
                obscureText: _isHidden,
                decoration: InputDecoration(
                    labelStyle: contentStyle,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffix: GestureDetector(
                        child: Text(
                          'show',
                          style: TextStyle(
                            fontSize: 15,
                            color: this._isHidden ? Colors.blue : Colors.grey,
                          ),
                        ),
                        onTap: () {
                          setState(() => this._isHidden = !this._isHidden);
                        }),
                    labelText: 'New password '),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: confirmpasswordcontroller,
                obscureText: _isconfirmHidden,
                decoration: InputDecoration(
                    labelStyle: contentStyle,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffix: GestureDetector(
                        child: Text(
                          'show',
                          style: TextStyle(
                            fontSize: 15,
                            color: this._isconfirmHidden
                                ? Colors.blue
                                : Colors.grey,
                          ),
                        ),
                        onTap: () {
                          setState(() =>
                              this._isconfirmHidden = !this._isconfirmHidden);
                        }),
                    labelText: 'Confirm password ',
                    hintText: 'Confirm password '),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  errormessage,
                  style: warningStyle,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              defaultButton(context, 'Confirm and reset', onPressed: () {
                // if (widget.model == null) {
                //   widget.model = ChangePasswordModel();
                // }
                // int userID = widget.model.userid;
                // widget.model = ChangePasswordModel(
                //     userid: userID,
                //     password: this.passwordcontroller.text,
                //     confirmpassword: this.confirmpasswordcontroller.text);

                // var validateResult = widget.model.validateVm();

                // if (validateResult.result == ResultStatus.Ok) {
                //   setState(() {
                //     errormessage = '';
                //   });
                //   ResetPasswordService resetPasswordServices =
                //       ResetPasswordService();
                //   var api_result = resetPasswordServices
                //       .changePassword(
                //           widget.model.userid, widget.model.password)
                //       .then((value) => {
                //             if (value == true)
                //               {
                openPage(
                    context,
                    (ctx) => SuccessPage(
                          onDone: () {
                            openPage(context, (ctx) => LoginPage());
                          },
                          bodyConTitle: Text(
                            'Completed!',
                            style: titleStyle,
                          ),
                          bodyConTent: Text(
                            'Your account has been deactivate',
                            style: contentStyle,
                          ),
                          bodySubConTent: Text(
                            'Contact customer service to re-active',
                            style: subTitleStyle,
                          ),
                          successIcon: SuccessIcon.success,
                          btnText: 'Done',
                        ));

                //             else
                //               {
                //                 setState(() {
                //                   errormessage = validateResult.message;
                //                 })
                //               }
                //           });
                // } else {
                //   setState(() {
                //     errormessage = validateResult.message;
                //   });
                // }
                //setState(() {
                // Fluttertoast.showToast(
                //     msg: "",
                //     toastLength: Toast.LENGTH_SHORT,
                //     gravity: ToastGravity.BOTTOM,
                //     timeInSecForIos: 1,
                //     backgroundColor: Colors.red,
                //     textColor: Colors.white);
                // });
              }),
            ],
          ),
        ));
  }
}
