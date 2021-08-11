import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';

class AccountBalancePage extends StatefulWidget {
  AccountBalancePage({
    Key? key,
  }) : super(key: key);

  @override
  _AccountBalancePageState createState() => _AccountBalancePageState();
}

class _AccountBalancePageState extends State<AccountBalancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: defaultAppBar(
          titleText: "Account Balance",
          leading: (IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              })),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    color: primaryColor,
                    child: SizedBox(
                        height: 70,
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: ListTile(
                            title: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: whiteColor,
                                    radius: 25,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/UK.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                    // child: ,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'GBP',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: whiteColor,
                                        fontWeight: FontWeight.normal),
                                    textAlign: TextAlign.center,
                                  ),
                                ]),
                            trailing: Text(
                              '£1,000,000',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: whiteColor,
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                  ),
                  SizedBox(height: 20),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    color: primaryColor,
                    child: SizedBox(
                        height: 70,
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: ListTile(
                            title: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: whiteColor,
                                    radius: 25,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/UK.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                    // child: ,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'GBP',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: whiteColor,
                                        fontWeight: FontWeight.normal),
                                    textAlign: TextAlign.center,
                                  ),
                                ]),
                            trailing: Text(
                              '£1,000,000',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: whiteColor,
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                  ),
                  SizedBox(height: 20),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    color: primaryColor,
                    child: SizedBox(
                        height: 70,
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: ListTile(
                            title: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: whiteColor,
                                    radius: 25,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/UK.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                    // child: ,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'GBP',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: whiteColor,
                                        fontWeight: FontWeight.normal),
                                    textAlign: TextAlign.center,
                                  ),
                                ]),
                            trailing: Text(
                              '£1,000,000',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: whiteColor,
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
