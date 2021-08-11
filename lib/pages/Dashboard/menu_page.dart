import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/utils/extensions.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

import '../login_page.dart';

class MenuePage extends StatefulWidget {
  MenuePage({Key? key}) : super(key: key);

  @override
  _MenuePageState createState() => _MenuePageState();
}

class _MenuePageState extends State<MenuePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        titleText: "",
        backgroundColor: whiteColor,
        leading: (IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            })),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Invite friends",
                    style: TextStyle(color: Colors.blue, fontSize: 20.0),
                  ),
                  TextButton(
                    onPressed: () {
                      openPage(context, (ctx) => LoginPage());
                    },
                    child: Text(
                      "Log out",
                      style: TextStyle(color: Colors.blue, fontSize: 20.0),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Divider(),
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/moreSavedDebitCreditCard.png',
                  height: 20,
                ),
                title: Text(
                  "Saved credit/debit card",
                  style: TextStyle(color: fromHex("#000000"), fontSize: 16.0),
                ),
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/moreIdentityDetails.png',
                  height: 20,
                ),
                title: Text(
                  "Identity information",
                  style: TextStyle(color: fromHex("#000000"), fontSize: 16.0),
                ),
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/moreAccountDetaials.png',
                  height: 20,
                ),
                title: Text(
                  "Account profile",
                  style: TextStyle(color: fromHex("#000000"), fontSize: 16.0),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("About Us"),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: defultColor,
                          size: 15,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      ListTile(
                        title: Text("FAQ"),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: defultColor,
                          size: 15,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      ListTile(
                        title: Text("Privacy policy "),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: defultColor,
                          size: 15,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      ListTile(
                        title: Text("MoneyFex T&Cs"),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: defultColor,
                          size: 15,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      ListTile(
                        title: Text("Cookies policy"),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: defultColor,
                          size: 15,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      ListTile(
                        title: Text("Cookies policy"),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: defultColor,
                          size: 15,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      ListTile(
                        title: Text("Terms of use"),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: defultColor,
                          size: 15,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      ListTile(
                        title: Text("Report a fraud"),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: defultColor,
                          size: 15,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      ListTile(
                        title: Text("Contact us"),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: defultColor,
                          size: 15,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
