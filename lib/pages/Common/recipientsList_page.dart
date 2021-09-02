import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/pages/Common/transactionSummary_page.dart';
import 'package:moneyfex_auxagent/pages/Recipient/selectServiceForAddRecipient_page.dart';
import 'package:moneyfex_auxagent/pages/Senders/addNewSenderRegistrationPage_page.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

class RecipientListPage extends StatefulWidget {
  RecipientListPage({
    Key? key,
  }) : super(key: key);

  @override
  _RecipientListPageState createState() => _RecipientListPageState();
}

class _RecipientListPageState extends State<RecipientListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: defaultAppBar(
          titleText: "Recipients",
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
                    height: 30,
                  ),
                  ListTile(
                      onTap: () {
                        openPage(context, (ctx) => TransactionSummaryPage());
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
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('NGN account *****7858',
                                          style: microsubtitile),
                                      Text(
                                        'GTBank',
                                        style: TextStyle(
                                            fontSize: 10, color: primaryColor),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      trailing: IconButton(
                          iconSize: 35,
                          icon: Icon(Icons.more_vert),
                          onPressed: () {})),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  defaultButton(context, '+ New Recipient',
                      btnColor: primaryColor,
                      textColor: whiteColor, onPressed: () {
                    openPage(
                        context, (ctx) => SelectServiceForAddRecipientPage());
                  }),
                ],
              ),
            ),
          ),
        ));
  }
}
