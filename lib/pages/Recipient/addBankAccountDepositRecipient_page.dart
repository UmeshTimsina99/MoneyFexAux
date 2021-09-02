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

class AddBankAccountDepositRecipientPage extends StatefulWidget {
  AddBankAccountDepositRecipientPage({
    Key? key,
  }) : super(key: key);

  @override
  _AddBankAccountDepositRecipientPageState createState() =>
      _AddBankAccountDepositRecipientPageState();
}

class _AddBankAccountDepositRecipientPageState
    extends State<AddBankAccountDepositRecipientPage> {
  TextEditingController countrycontroller = TextEditingController();
  TextEditingController recipientFullNamecontroller = TextEditingController();
  TextEditingController mobilenumbercontroller = TextEditingController();
  TextEditingController accountnumbercontroller = TextEditingController();
  TextEditingController banknamecontroller = TextEditingController();
  TextEditingController bankCodecontroller = TextEditingController();

  String errormessage = "";
  String key = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: defaultAppBar(
          titleText: "Bank account deposit",
          leading: (IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              })),
        ),
        body: SingleChildScrollView(
          child: Container(
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
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text('Is this a business?')],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Switch(
                            value: true,
                            onChanged: null,
                            activeColor: primaryColor,
                          )
                        ],
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
                        labelText: 'Select Country',
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
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: mobilenumbercontroller,
                    textInputAction: TextInputAction.next,
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
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: accountnumbercontroller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Enter account number',
                        hintText: 'Enter account number'),
                  ),
                  key == 'accountnumber'
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
                    controller: banknamecontroller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Select bank name',
                        hintText: 'Select bank name'),
                  ),
                  key == 'bankname'
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
                    controller: bankCodecontroller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelStyle: contentStyle,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Enter code',
                        hintText: 'Enter code'),
                  ),
                  key == 'bankCode'
                      ? Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            errormessage,
                            style: warningStyle,
                          ),
                        )
                      : Container(),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Bank code / branch code / sort code /routing code etc.',
                    style: TextStyle(fontSize: 12),
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
