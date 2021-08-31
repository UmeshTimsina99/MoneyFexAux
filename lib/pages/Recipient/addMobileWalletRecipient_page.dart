import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/pages/Common/recipientsList_page.dart';
import 'package:moneyfex_auxagent/pages/IdentityVerification/identityVerificationUpload_page.dart';
import 'package:moneyfex_auxagent/pages/SuccessPages/addRecipientSuccess_page.dart';
import 'package:moneyfex_auxagent/utils/constants.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/indicator_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

class AddMobileWalletRecipientPage extends StatefulWidget {
  AddMobileWalletRecipientPage({
    Key? key,
  }) : super(key: key);

  @override
  _AddMobileWalletRecipientPageState createState() =>
      _AddMobileWalletRecipientPageState();
}

class _AddMobileWalletRecipientPageState
    extends State<AddMobileWalletRecipientPage> {
  TextEditingController countrycontroller = TextEditingController();
  TextEditingController walletcontroller = TextEditingController();
  TextEditingController recipientFullNamecontroller = TextEditingController();
  TextEditingController mobilenumbercontroller = TextEditingController();

  String errormessage = "";
  String key = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: defaultAppBar(
          titleText: "Mobile Wallet",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New recipient',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: countrycontroller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Country',
                        hintText: 'Select Country'),
                  ),
                  key == 'country'
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
                    keyboardType: TextInputType.text,
                    controller: walletcontroller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Wallet',
                        hintText: 'Select wallet'),
                  ),
                  key == 'wallet'
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
                    keyboardType: TextInputType.text,
                    controller: recipientFullNamecontroller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Recipient full name',
                        hintText: 'Recipient full name'),
                  ),
                  key == 'recipientFullName'
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
                    keyboardType: TextInputType.text,
                    controller: mobilenumbercontroller,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Mobile number',
                        hintText: 'Mobile number'),
                  ),
                  key == 'mobilenumber'
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
                  SizedBox(
                    height: 35,
                  ),
                  defaultButton(context, 'Confirm and add', onPressed: () {
                    openPage(
                        context,
                        (ctx) => AddRecipientSuccessPage(
                              onDone: () {
                                openPage(context, (ctx) => RecipientListPage());
                              },
                              bodyConTitle:
                                  Text("You've added", style: contentStyle),
                              recipientName: Text(
                                'Ukesh Raj',
                                style: titleStyle,
                              ),
                              successIcon: SuccessIcon.success,
                              btnText: 'Done',
                            ));
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
