import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';

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
              padding: const EdgeInsets.all(30.0),
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
                                  Text('United Kingdom', style: minisubtitile)
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
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(30.0)),
                              elevation: 0,
                              minWidth: 50.0,
                              height: 0,
                              color: primaryColor,
                              child: new Text('Transfer Money',
                                  style: new TextStyle(
                                      fontSize: 10.0,
                                      color: whiteColor,
                                      fontFamily: 'AndreasBecker')),
                              onPressed: () {}),
                          TextButton(
                              onPressed: () {},
                              child: Text('Sign up',
                                  style: TextStyle(
                                      color: whiteColor, fontSize: 10))),
                        ],
                      )),
                  Divider(
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
