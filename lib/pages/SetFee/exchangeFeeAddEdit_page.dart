import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/pages/Dashboard/activity_page.dart';
import 'package:moneyfex_auxagent/pages/ForgotPassword/forgotPasswordEnterInformation_page.dart';
import 'package:moneyfex_auxagent/pages/SetFee/exchangeFeeList_page.dart';
import 'package:moneyfex_auxagent/pages/SuccessPages/sucess_page.dart';
import 'package:moneyfex_auxagent/utils/constants.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

class ExchangeFeeAddEditPage extends StatefulWidget {
  ExchangeFeeAddEditPage({
    Key? key,
  }) : super(key: key);

  @override
  _ExchangeFeeAddEditPageState createState() => _ExchangeFeeAddEditPageState();
}

class _ExchangeFeeAddEditPageState extends State<ExchangeFeeAddEditPage> {
  TextEditingController sendingcurrencyController = TextEditingController();
  TextEditingController sendingcountryController = TextEditingController();
  TextEditingController receivingcurrencyController = TextEditingController();
  TextEditingController receivingcountryController = TextEditingController();
  TextEditingController rangeController = TextEditingController();
  TextEditingController methodController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController feeController = TextEditingController();

  String errormessage = "";
  String key = '';
  String errorMessage = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: defaultAppBar(
          titleText: "Set exchange rate",
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
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                      onTap: () {
                        // openPage(
                        //     context,
                        //     (ctx) => CountryListViewPage(
                        //           onTap: (country) {
                        //             setState(() {
                        //               countryController.text = country.name;
                        //               countryCode = country.code;
                        //               _countryPhoneCode = country.phoneCode;
                        //             });
                        //           },
                        //           formchange: false,
                        // ));
                      },
                      controller: sendingcurrencyController,
                      showCursor: true,
                      readOnly: true,
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Select sending currency",
                          labelText: "Currency",
                          labelStyle: contentStyle,
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                            ),
                            iconSize: 15,
                            onPressed: null,
                          ))),
                  key == 'sendingCurrency'
                      ? Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(errorMessage, style: warningStyle),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      onTap: () {
                        // openPage(
                        //     context,
                        //     (ctx) => CountryListViewPage(
                        //           onTap: (country) {
                        //             setState(() {
                        //               countryController.text = country.name;
                        //               countryCode = country.code;
                        //               _countryPhoneCode = country.phoneCode;
                        //             });
                        //           },
                        //           formchange: false,
                        // ));
                      },
                      controller: sendingcountryController,
                      showCursor: true,
                      readOnly: true,
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Select sending country",
                          labelText: "Country",
                          labelStyle: contentStyle,
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                            ),
                            iconSize: 15,
                            onPressed: null,
                          ))),
                  key == 'sendingCountry'
                      ? Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(errorMessage, style: warningStyle),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      onTap: () {},
                      controller: receivingcurrencyController,
                      showCursor: true,
                      readOnly: true,
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Select receiving currency",
                          labelText: "Currency",
                          labelStyle: contentStyle,
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                            ),
                            iconSize: 15,
                            onPressed: null,
                          ))),
                  key == 'receivingCurrency'
                      ? Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(errorMessage, style: warningStyle),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      onTap: () {},
                      controller: receivingcountryController,
                      showCursor: true,
                      readOnly: true,
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Select receiving country",
                          labelText: "Country",
                          labelStyle: contentStyle,
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                            ),
                            iconSize: 15,
                            onPressed: null,
                          ))),
                  key == 'receivingCountry'
                      ? Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(errorMessage, style: warningStyle),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      onTap: () {},
                      controller: rangeController,
                      showCursor: true,
                      readOnly: true,
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Select range",
                          labelText: "Range",
                          labelStyle: contentStyle,
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                            ),
                            iconSize: 15,
                            onPressed: null,
                          ))),
                  key == 'range'
                      ? Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(errorMessage, style: warningStyle),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      onTap: () {},
                      controller: methodController,
                      showCursor: true,
                      readOnly: true,
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Select method",
                          labelText: "Method",
                          labelStyle: contentStyle,
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                            ),
                            iconSize: 15,
                            onPressed: null,
                          ))),
                  key == 'method'
                      ? Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(errorMessage, style: warningStyle),
                        )
                      : Container(),
                  TextField(
                      onTap: () {},
                      controller: typeController,
                      showCursor: true,
                      readOnly: true,
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Select type",
                          labelText: "Type",
                          labelStyle: contentStyle,
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                            ),
                            iconSize: 15,
                            onPressed: null,
                          ))),
                  key == 'type'
                      ? Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(errorMessage, style: warningStyle),
                        )
                      : Container(),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: feeController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelStyle: contentStyle,
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      labelText: 'Fee',
                      hintText: 'Enter fee',
                    ),
                  ),
                  key == 'fee'
                      ? Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            errormessage,
                            style: warningStyle,
                          ),
                        )
                      : Container(),
                  SizedBox(
                    height: 25,
                  ),
                  defaultButton(context, 'Confirm and set',
                      btnColor: primaryColor, onPressed: () {
                    openPage(
                        context,
                        (ctx) => SuccessPage(
                              onDone: () {
                                openPage(
                                    context, (ctx) => ExchangeFeeListPage());
                              },
                              bodyConTitle: Text(
                                'Completed!',
                                style: titleStyle,
                              ),
                              successIcon: SuccessIcon.success,
                              btnText: 'Done',
                            ));
                  }),
                ],
              ),
            ),
          ),
        ));
  }
}
