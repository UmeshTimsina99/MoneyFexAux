import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/pages/ForgotPassword/forgotPasswordEnterOtpCode_page.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

class ForgotPasswordEnterInformationPage extends StatefulWidget {
  ForgotPasswordEnterInformationPage({
    Key? key,
  }) : super(key: key);

  @override
  _ForgotPasswordEnterInformationPageState createState() =>
      _ForgotPasswordEnterInformationPageState();
}

class _ForgotPasswordEnterInformationPageState
    extends State<ForgotPasswordEnterInformationPage> {
  TextEditingController emailAddresscontroller = TextEditingController();
  TextEditingController agentCodecontroller = TextEditingController();
  TextEditingController staffCodecontroller = TextEditingController();

  String errormessage = "";
  String key = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: defaultAppBar(
          titleText: "Reset your password",
          leading: (IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              })),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 800,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Text(
                    'Enter you email, Agent code and staff code to reset your password',
                    style: TextStyle(color: blackColor, fontSize: 23),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailAddresscontroller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Email address',
                        hintText: 'Enter email address'),
                  ),
                  key == 'emailAddress'
                      ? Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            errormessage,
                            style: warningStyle,
                          ),
                        )
                      : Container(),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: agentCodecontroller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Agent Code',
                        hintText: 'Enter agent code'),
                  ),
                  key == 'agentcode'
                      ? Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            errormessage,
                            style: warningStyle,
                          ),
                        )
                      : Container(),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: agentCodecontroller,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Staff Code',
                        hintText: 'Enter staff code'),
                  ),
                  key == 'staffcode'
                      ? Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            errormessage,
                            style: warningStyle,
                          ),
                        )
                      : Container(),
                  SizedBox(
                    height: 35,
                  ),
                  defaultButton(context, 'Continue', onPressed: () {
                    // if (widget.model == null) {
                    //   widget.model = SignupViewModel();
                    //   widget.model.logininfo = PersonalLoginInformationVm();
                    // }
                    // widget.model.logininfo = PersonalLoginInformationVm(
                    //     country: this.countrycontroller.text,
                    //     mobileNumber: this.mobilenumbercontroller.text,
                    //     address: this.emailcontroller.text,
                    //     password: this.passwordcontroller.text,
                    //     newPassword: this.newpasswordcontroller.text);

                    // var validateResult = widget.model.logininfo.validateVm();

                    // if (validateResult.result == ResultStatus.Ok) {
                    //   setState(() {
                    //     errormessage = '';
                    //   });

                    //   validateEmailAndMobileNo().then((value) {
                    //     if (value.result == ResultStatus.Ok) {
                    openPage(
                        context,
                        (ctx) => ForgotPasswordEnterOtpCodePage(
                              phoneno: '',
                              email: emailAddresscontroller.text,
                              //otpModel: value.data,
                              ontap: () {
                                // var passwordModel = ChangePasswordModel(
                                //     userid: value.data.senderId);
                                openPage(
                                    context,
                                    (ctx) => ForgotPasswordEnterInformationPage(
                                        // model: passwordModel,
                                        ));
                              },
                            ));
                    // }
                    //     } else {
                    //       setState(() {
                    //         Fluttertoast.showToast(
                    //             msg: value.message,
                    //             toastLength: Toast.LENGTH_SHORT,
                    //             gravity: ToastGravity.BOTTOM,
                    //             timeInSecForIos: 1,
                    //             backgroundColor: Colors.red,
                    //             textColor: Colors.white);
                    //       });
                    //     }
                    //   });
                    // } else {
                    //   setState(() {
                    //     errormessage = validateResult.message;
                    //     key = validateResult.key;
                    //   });
                    // }
                  }),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
