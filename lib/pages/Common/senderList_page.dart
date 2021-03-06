import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/pages/Senders/addNewSenderRegistrationPage_page.dart';

import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

class SenderListPage extends StatefulWidget {
  SenderListPage({
    Key? key,
  }) : super(key: key);

  @override
  _SenderListPageState createState() => _SenderListPageState();
}

class _SenderListPageState extends State<SenderListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: defaultAppBar(
          titleText: "Senders",
          leading: (IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              })),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    onTap: () {
                      // openPage(context,            (ctx) => TransactionEstimationPage());
                    },
                    title: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: primaryColor,
                            border: Border.all(
                              color: primaryColor,
                            ),
                          ),
                          child: Text('P', style: circleText),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Peter Edumrr',
                              style: buttomsheetTitle,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/UK.png',
                                  height: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('United K', style: minisubtitile)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    trailing: Column(
                      children: [
                        // MaterialButton(
                        //     disabledElevation: 0,
                        //     padding: EdgeInsets.all(0),
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: new BorderRadius.circular(30.0)),
                        //     color: primaryColor,
                        //     height: 20,
                        //     child: new Text('Transfer Money',
                        //         style: new TextStyle(
                        //             fontSize: 10.0,
                        //             color: whiteColor,
                        //             fontFamily: 'AndreasBecker')),
                        //     onPressed: () {}),
                        InkWell(
                          child: Text(
                            'hello',
                            style: TextStyle(color: primaryColor),
                          ),
                        ),
                        InkWell(
                          child: Text(
                            'hello',
                            style: TextStyle(color: primaryColor),
                          ),
                        )
                        // MaterialButton(
                        //     disabledElevation: 0,
                        //     padding: EdgeInsets.all(0),
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: new BorderRadius.circular(30.0)),
                        //     color: primaryColor,
                        //     height: 20,
                        //     child: new Text('Transfer Money',
                        //         style: new TextStyle(
                        //             fontSize: 10.0,
                        //             color: whiteColor,
                        //             fontFamily: 'AndreasBecker')),
                        //     onPressed: () {}),
                        // MaterialButton(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: new BorderRadius.circular(30.0)),
                        //     color: primaryColor,
                        //     height: 10,
                        //     child: new Text('Transfer Money',
                        //         style: new TextStyle(
                        //             fontSize: 10.0,
                        //             color: whiteColor,
                        //             fontFamily: 'AndreasBecker')),
                        //     onPressed: () {}),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    onTap: () {
                      // openPage(context,            (ctx) => TransactionEstimationPage());
                    },
                    title: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: primaryColor,
                            border: Border.all(
                              color: primaryColor,
                            ),
                          ),
                          child: Text('P', style: circleText),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Peter Edumrr',
                              style: buttomsheetTitle,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/UK.png',
                                  height: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('United K', style: minisubtitile)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    trailing: Column(
                      children: [
                        MaterialButton(
                            disabledElevation: 0,
                            padding: EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            color: primaryColor,
                            height: 20,
                            child: new Text('Transfer Money',
                                style: new TextStyle(
                                    fontSize: 10.0,
                                    color: whiteColor,
                                    fontFamily: 'AndreasBecker')),
                            onPressed: () {}),
                        MaterialButton(
                            disabledElevation: 0,
                            padding: EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            color: primaryColor,
                            height: 20,
                            child: new Text('Transfer Money',
                                style: new TextStyle(
                                    fontSize: 10.0,
                                    color: whiteColor,
                                    fontFamily: 'AndreasBecker')),
                            onPressed: () {}),
                        // MaterialButton(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: new BorderRadius.circular(30.0)),
                        //     color: primaryColor,
                        //     height: 10,
                        //     child: new Text('Transfer Money',
                        //         style: new TextStyle(
                        //             fontSize: 10.0,
                        //             color: whiteColor,
                        //             fontFamily: 'AndreasBecker')),
                        //     onPressed: () {}),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  defaultButton(context, '+ New Sender',
                      btnColor: primaryColor,
                      textColor: whiteColor, onPressed: () {
                    openPage(context, (ctx) => AddNewSenderRegistrationPage());
                  }),
                ],
              ),
            ),
          ),
        ));
  }
}
