import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/pages/SetFee/exchangeFeeAddEdit_page.dart';
import 'package:moneyfex_auxagent/utils/extensions.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

class AccoutingTransactionListPage extends StatefulWidget {
  AccoutingTransactionListPage({
    Key? key,
  }) : super(key: key);

  @override
  _AccoutingTransactionListState createState() =>
      _AccoutingTransactionListState();
}

class _AccoutingTransactionListState
    extends State<AccoutingTransactionListPage> {
  String key = "";

  String errormessage = "";
  TextEditingController dobcontroller = TextEditingController();
  TextEditingController recevingcountrycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: defaultAppBar(
          titleText: "Accounting",
          leading: (IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              })),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
              child: Column(
                children: [
                  Column(
                    children: [
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        showCursor: true,
                        readOnly: true,
                        controller: dobcontroller,
                        decoration: InputDecoration(
                          labelStyle: contentStyle,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: 'Date Of Birth',
                        ),
                      ),
                      key == 'dob'
                          ? Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(errormessage, style: warningStyle),
                            )
                          : Container(),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        showCursor: true,
                        readOnly: true,
                        controller: recevingcountrycontroller,
                        decoration: InputDecoration(
                          labelStyle: contentStyle,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: 'Receiving country',
                        ),
                      ),
                      key == 'dob'
                          ? Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(errormessage, style: warningStyle),
                            )
                          : Container(),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Card(
                          color: primaryColor,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  '30-Day Sales',
                                  style: TextStyle(color: whiteColor),
                                ),
                                Text('GBP 50,000',
                                    style: TextStyle(color: whiteColor))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Card(
                          color: fromHex('#014667'),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  '30-Day Margin',
                                  style: TextStyle(color: whiteColor),
                                ),
                                Text(
                                  'GBP 5000.25',
                                  style: TextStyle(color: whiteColor),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Card(
                          color: fromHex("#51B155"),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  '30-Day Fee',
                                  style: TextStyle(color: whiteColor),
                                ),
                                Text(
                                  'GBP 500.23',
                                  style: TextStyle(color: whiteColor),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text('Countries'),
                        SizedBox(
                          width: 15,
                        ),
                        Text('Sender/Receiver'),
                        SizedBox(
                          width: 15,
                        ),
                        Text('Amount/Fee'),
                        SizedBox(
                          width: 15,
                        ),
                        Text('Margin/Status')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
                    alignment: Alignment.centerLeft,
                    color: Colors.grey[350],
                    child: Text('Yesterday'),
                  ),
                  ListTile(
                      onTap: () {
                        openPage(context, (ctx) => ExchangeFeeAddEditPage());
                      },
                      title: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: whiteColor,
                            radius: 25,
                            child: Image.asset(
                              'assets/images/UK.png',
                              alignment: Alignment.centerRight,
                              height: 25,
                              fit: BoxFit.cover,
                            ),
                            // child: ,
                          ),
                          CircleAvatar(
                            backgroundColor: whiteColor,
                            radius: 25,
                            child: Image.asset(
                              'assets/images/UK.png',
                              alignment: Alignment.centerLeft,
                              height: 25,
                              fit: BoxFit.cover,
                            ),
                            // child: ,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('James utaga..',
                                  style: TextStyle(
                                      color: blackColor, fontSize: 13)),
                              Text(
                                'Marbel Anege...',
                                style: TextStyle(
                                    color: primaryColor, fontSize: 11),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('£665.01',
                                  style: TextStyle(
                                      color: blackColor, fontSize: 13)),
                              Text(
                                '£2.99',
                                style: TextStyle(
                                    color: primaryColor, fontSize: 11),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('£4.0',
                                  style: TextStyle(
                                      color: blackColor, fontSize: 13)),
                              Text(
                                'Paid',
                                style: TextStyle(
                                    color: primaryColor, fontSize: 11),
                              )
                            ],
                          ),
                        ],
                      ),
                      trailing: new Text('')),
                  Divider(
                    thickness: 1,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
                    alignment: Alignment.centerLeft,
                    color: Colors.grey[350],
                    child: Text('Yesterday'),
                  ),
                  ListTile(
                      onTap: () {
                        openPage(context, (ctx) => ExchangeFeeAddEditPage());
                      },
                      title: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: whiteColor,
                            radius: 25,
                            child: Image.asset(
                              'assets/images/UK.png',
                              alignment: Alignment.centerRight,
                              height: 25,
                              fit: BoxFit.cover,
                            ),
                            // child: ,
                          ),
                          CircleAvatar(
                            backgroundColor: whiteColor,
                            radius: 25,
                            child: Image.asset(
                              'assets/images/UK.png',
                              alignment: Alignment.centerLeft,
                              height: 25,
                              fit: BoxFit.cover,
                            ),
                            // child: ,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('James utaga..',
                                  style: TextStyle(
                                      color: blackColor, fontSize: 12)),
                              Text(
                                'Marbel Anege...',
                                style: TextStyle(
                                    color: primaryColor, fontSize: 10),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('£665.01',
                                  style: TextStyle(
                                      color: blackColor, fontSize: 12)),
                              Text(
                                '£2.99',
                                style: TextStyle(
                                    color: primaryColor, fontSize: 10),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('£4.0',
                                  style: TextStyle(
                                      color: blackColor, fontSize: 12)),
                              Text(
                                'Paid',
                                style: TextStyle(
                                    color: primaryColor, fontSize: 10),
                              )
                            ],
                          ),
                        ],
                      ),
                      trailing: new Text('')),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
