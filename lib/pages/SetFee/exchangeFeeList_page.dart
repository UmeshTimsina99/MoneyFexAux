import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/pages/SetFee/exchangeFeeAddEdit_page.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

class ExchangeFeeListPage extends StatefulWidget {
  ExchangeFeeListPage({
    Key? key,
  }) : super(key: key);

  @override
  _ExchangeFeeListState createState() => _ExchangeFeeListState();
}

class _ExchangeFeeListState extends State<ExchangeFeeListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: defaultAppBar(
          titleText: "Exchange fee",
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
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Text('Countries'),
                        SizedBox(
                          width: 25,
                        ),
                        Text('Pair'),
                        SizedBox(
                          width: 25,
                        ),
                        Text('Rate'),
                        SizedBox(
                          width: 25,
                        ),
                        Text('Range')
                      ],
                    ),
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
                          width: 5,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('NGN/XAF',
                                    style: TextStyle(
                                        color: blackColor, fontSize: 12)),
                                Text(
                                  'Bank transfer',
                                  style: TextStyle(
                                      color: primaryColor, fontSize: 8),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('665.01',
                                    style: TextStyle(
                                        color: blackColor, fontSize: 12)),
                                Text(
                                  'Flat',
                                  style: TextStyle(
                                      color: primaryColor, fontSize: 8),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('All')
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    trailing: MaterialButton(
                        disabledElevation: 0,
                        padding: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        color: primaryColor,
                        height: 20,
                        child: new Text('Change',
                            style: new TextStyle(
                                fontSize: 15.0,
                                color: whiteColor,
                                fontFamily: 'AndreasBecker')),
                        onPressed: () {
                          openPage(context, (ctx) => ExchangeFeeAddEditPage());
                        }),
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
                          width: 5,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('NGN/XAF',
                                    style: TextStyle(
                                        color: blackColor, fontSize: 12)),
                                Text(
                                  'Bank transfer',
                                  style: TextStyle(
                                      color: primaryColor, fontSize: 8),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('665.01',
                                    style: TextStyle(
                                        color: blackColor, fontSize: 12)),
                                Text(
                                  'Flat',
                                  style: TextStyle(
                                      color: primaryColor, fontSize: 8),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('All')
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    trailing: MaterialButton(
                        disabledElevation: 0,
                        padding: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        color: primaryColor,
                        height: 20,
                        child: new Text('Change',
                            style: new TextStyle(
                                fontSize: 15.0,
                                color: whiteColor,
                                fontFamily: 'AndreasBecker')),
                        onPressed: () {
                          openPage(context, (ctx) => ExchangeFeeAddEditPage());
                        }),
                    // MaterialButton(
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  defaultButton(context, 'Set new rate',
                      btnColor: primaryColor,
                      textColor: whiteColor, onPressed: () {
                    openPage(context, (ctx) => ExchangeFeeAddEditPage());
                  }),
                ],
              ),
            ),
          ),
        ));
  }
}
