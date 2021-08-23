import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/pages/Dashboard/activity_page.dart';
import 'package:moneyfex_auxagent/pages/Dashboard/fundAccount_Page.dart';
import 'package:moneyfex_auxagent/pages/SetFee/exchangeFeeAddEdit_page.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

class FundingStatementListPage extends StatefulWidget {
  FundingStatementListPage({
    Key? key,
  }) : super(key: key);

  @override
  _FundingStatementListState createState() => _FundingStatementListState();
}

class _FundingStatementListState extends State<FundingStatementListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: defaultAppBar(
          titleText: "Funding Statement",
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
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Text('Currency'),
                        SizedBox(
                          width: 25,
                        ),
                        Text('Amount'),
                        SizedBox(
                          width: 25,
                        ),
                        Text('Type'),
                        SizedBox(
                          width: 45,
                        ),
                        Text('Status')
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
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
                        SizedBox(
                          width: 5,
                        ),
                        Row(
                          children: [
                            Text('NGN',
                                style:
                                    TextStyle(color: blackColor, fontSize: 13)),
                            SizedBox(
                              width: 20,
                            ),
                            Text('45,000',
                                style:
                                    TextStyle(color: blackColor, fontSize: 13)),
                            SizedBox(
                              width: 20,
                            ),
                            Text('Debit/Credit',
                                style:
                                    TextStyle(color: blackColor, fontSize: 13)),
                            SizedBox(
                              width: 20,
                            ),
                            Text('inprogess',
                                style:
                                    TextStyle(color: blackColor, fontSize: 13))
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),

                    // MaterialButton(
                  ),
                  Divider(
                    thickness: 1,
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
                        SizedBox(
                          width: 5,
                        ),
                        Row(
                          children: [
                            Text('NGN',
                                style:
                                    TextStyle(color: blackColor, fontSize: 13)),
                            SizedBox(
                              width: 20,
                            ),
                            Text('45,000',
                                style:
                                    TextStyle(color: blackColor, fontSize: 13)),
                            SizedBox(
                              width: 20,
                            ),
                            Text('Debit/Credit',
                                style:
                                    TextStyle(color: blackColor, fontSize: 13)),
                            SizedBox(
                              width: 20,
                            ),
                            Text('inprogess',
                                style:
                                    TextStyle(color: blackColor, fontSize: 13))
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),

                    // MaterialButton(
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(height: 15),
                  defaultButton(context, 'Fund Account',
                      btnColor: primaryColor,
                      textColor: whiteColor, onPressed: () {
                    openPage(context, (ctx) => ActivityPage());
                  }),
                ],
              ),
            ),
          ),
        ));
  }
}
