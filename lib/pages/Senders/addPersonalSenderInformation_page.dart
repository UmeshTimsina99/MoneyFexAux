import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/pages/Senders/addBusinessSenderPersonalInfo_page.dart';
import 'package:moneyfex_auxagent/pages/Senders/addPersonalSenderPersonalInfo_page.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/indicator_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

class AddPersonalSenderInformationPage extends StatefulWidget {
  AddPersonalSenderInformationPage({
    Key? key,
  }) : super(key: key);

  @override
  _AddPersonalSenderInformationPageState createState() =>
      _AddPersonalSenderInformationPageState();
}

class _AddPersonalSenderInformationPageState
    extends State<AddPersonalSenderInformationPage> {
  TextEditingController countrycontroller = TextEditingController();
  TextEditingController mobilenumbercontroller = TextEditingController();
  TextEditingController emailAddresscontroller = TextEditingController();

  String errormessage = "";
  String key = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: defaultAppBar(
          titleText: "Login Information",
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
                  indicator(context, 0.16),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'What are their personal details?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
                    keyboardType: TextInputType.number,
                    controller: mobilenumbercontroller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Mobile number',
                        hintText: 'Enter mobile number'),
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
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailAddresscontroller,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Email address',
                        hintText: 'Enter email address (optional)'),
                  ),
                  key == 'emailaddress'
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
                    openPage(
                        context, (ctx) => AddPersonalSenderPersonalInfoPage());
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
