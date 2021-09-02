import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/pages/Dashboard/activity_page.dart';
import 'package:moneyfex_auxagent/pages/SuccessPages/addRecipientSuccess_page.dart';
import 'package:moneyfex_auxagent/utils/constants.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

class TransactionSummaryPage extends StatefulWidget {
  TransactionSummaryPage({Key? key}) : super(key: key);

  @override
  _TransactionSummaryPageState createState() => _TransactionSummaryPageState();
}

class _TransactionSummaryPageState extends State<TransactionSummaryPage> {
  bool load = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget loadingIndicator = load
        ? new Container(
            color: Colors.transparent,
            width: 70.0,
            height: 70.0,
            child: new Padding(
                padding: const EdgeInsets.all(5.0),
                child: new Center(child: new CircularProgressIndicator())),
          )
        : new Container();
    return Scaffold(
      appBar: defaultAppBar(
        titleText: "Summary",
        leading: (IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            })),
      ),
      body: Container(
          color: whiteColor,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 15, top: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/user.png',
                        height: 30,
                        color: primaryColor,
                      ),
                      SizedBox(width: 10),
                      Text(('receiverName'), style: reviewtitleStyle)
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                      color: Colors.grey[300],
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Exchange Rate",
                                    style: reviewtextStyle,
                                  ),
                                  Text(
                                    'GBP' + " 1 = " + '100.0' + " " + 'NGN',
                                    style: reviewtextStyle,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "They receive",
                                    style: reviewtextStyle,
                                  ),
                                  Text(
                                    (r"$") + '4.00' + 'GBP',
                                    // . 4.00 GBP',
                                    style: reviewtextStyle,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "You send",
                                    style: reviewtextStyle,
                                  ),
                                  Text(
                                    (r"$") + '4.00' + 'GBP',
                                    style: reviewtextStyle,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Fee",
                                    style: reviewtextStyle,
                                  ),
                                  Text(
                                    (r"$") + '4.00' + 'GBP',
                                    style: reviewtextStyle,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Reference',
                                    style: reviewtextStyle,
                                  ),
                                  Text(
                                    'School fees',
                                    style: reviewtextStyle,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total to pay",
                                    style: reviewtextStyle,
                                  ),
                                  Text(
                                    '100.00 GBP',
                                    style: reviewtextStyle,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                          ])),
                ),
                SizedBox(height: 30),
                new Align(
                  child: loadingIndicator,
                  alignment: FractionalOffset.bottomCenter,
                ),
                defaultButton(context, 'Confirm', onPressed: () {
                  openPage(
                      context,
                      (ctx) => AddRecipientSuccessPage(
                            onDone: () {
                              openPage(context, (ctx) => ActivityPage());
                            },
                            bodyConTitle: Text(
                                "You've sent " + (r"$") + "10.00",
                                style: contentStyle),
                            recipientName: Row(
                              children: [
                                Text(
                                  'to',
                                  style: contentStyle,
                                ),
                                Text(
                                  'Ukesh Raj',
                                  style: titleStyle,
                                ),
                              ],
                            ),
                            successIcon: SuccessIcon.success,
                            btnText: 'Done',
                          ));
                }),
              ],
            ),
          )),
    );
  }
}
