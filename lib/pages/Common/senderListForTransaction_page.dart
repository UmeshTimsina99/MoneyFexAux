import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/pages/Senders/addNewSenderRegistrationPage_page.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

class SenderListForTansactionPage extends StatefulWidget {
  SenderListForTansactionPage({
    Key? key,
  }) : super(key: key);

  @override
  _SenderListForTansactionPageState createState() =>
      _SenderListForTansactionPageState();
}

class _SenderListForTansactionPageState
    extends State<SenderListForTansactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: defaultAppBar(
          titleText: "Select Senders",
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
