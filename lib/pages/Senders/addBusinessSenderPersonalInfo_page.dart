import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/pages/Senders/addBusinessSenderAddressInfo_page.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/indicator_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

class AddBusinessSenderPersonalInfoPage extends StatefulWidget {
  AddBusinessSenderPersonalInfoPage({
    Key? key,
  }) : super(key: key);

  @override
  _AddBusinessSenderPersonalInfoPageState createState() =>
      _AddBusinessSenderPersonalInfoPageState();
}

class _AddBusinessSenderPersonalInfoPageState
    extends State<AddBusinessSenderPersonalInfoPage> {
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  TextEditingController dobcontroller = TextEditingController();
  TextEditingController gendercontroller = TextEditingController();
  TextEditingController rolecontroller = TextEditingController();

  String errormessage = "";
  String key = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: defaultAppBar(
          titleText: "",
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
                  indicator(context, 0.32),
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
                    controller: firstnamecontroller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Legal first name',
                        hintText: 'Legal first name'),
                  ),
                  key == 'firstname'
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
                    controller: lastnamecontroller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Legal last name',
                        hintText: 'Legal last name'),
                  ),
                  key == 'lastname'
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
                    keyboardType: TextInputType.datetime,
                    controller: dobcontroller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Date of birth',
                        hintText: 'Date of birth'),
                  ),
                  key == 'dob'
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
                    controller: gendercontroller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Gender',
                        hintText: 'Select'),
                  ),
                  key == 'gender'
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
                    controller: gendercontroller,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Role',
                        hintText: 'Select'),
                  ),
                  key == 'role'
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
                        context, (ctx) => AddBusinessSenderAddressInfoPage());
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
