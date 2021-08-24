import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/pages/Senders/addBusinessSenderBusinessInfo_page.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/indicator_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

class AddBusinessSenderConfirmAddressInfoPage extends StatefulWidget {
  AddBusinessSenderConfirmAddressInfoPage({
    Key? key,
  }) : super(key: key);

  @override
  _AddBusinessSenderConfirmAddressInfoPageState createState() =>
      _AddBusinessSenderConfirmAddressInfoPageState();
}

class _AddBusinessSenderConfirmAddressInfoPageState
    extends State<AddBusinessSenderConfirmAddressInfoPage> {
  TextEditingController citycontroller = TextEditingController();
  TextEditingController addresslineonecontroller = TextEditingController();
  TextEditingController addresslinetwocontroller = TextEditingController();
  TextEditingController postalcodecontroller = TextEditingController();

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
                  indicator(context, 0.48),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Confirm their operating address',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Where your business actually operates from',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: citycontroller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'City',
                        hintText: 'City'),
                  ),
                  key == 'city'
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
                    controller: addresslineonecontroller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Address Line 1',
                        hintText: 'Address Line 1'),
                  ),
                  key == 'addresslineone'
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
                    controller: addresslinetwocontroller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Address Line 2',
                        hintText: 'Address Line 2 (optional)'),
                  ),
                  key == 'addresslinetwo'
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
                    controller: postalcodecontroller,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Postcode/Zip Code',
                        hintText: 'Postcode/Zip Code (optional)'),
                  ),
                  key == 'postalcode'
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
                  defaultButton(context, 'Continue', onPressed: () {
                    openPage(
                        context, (ctx) => AddBusinessSenderBusinessInfoPage());
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
