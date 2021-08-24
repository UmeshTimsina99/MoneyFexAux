import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/pages/Senders/addBusinessSenderInformation_page.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

class AddNewSenderRegistrationPage extends StatefulWidget {
  AddNewSenderRegistrationPage({Key? key}) : super(key: key);

  @override
  _AddNewSenderRegistrationPageState createState() =>
      _AddNewSenderRegistrationPageState();
}

class _AddNewSenderRegistrationPageState
    extends State<AddNewSenderRegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        titleText: "Registration",
        leading: (IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            })),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Select Registration',
            style: contentStyle,
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkResponse(
                onTap: () {
                  //openPage(context, (ctx) => LoginInformationPage());
                },
                child: Container(
                  width: 120,
                  height: 80,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor,
                  ),
                  child: Center(
                      child: Text(
                    'Personal',
                    style: flatbuttonStyle,
                  )),
                ),
              ),
              InkResponse(
                onTap: () {
                  openPage(
                      context, (ctx) => AddBusinessSenderInformationPage());
                },
                child: Container(
                  width: 120,
                  height: 80,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor,
                  ),
                  child: Center(
                      child: Text(
                    'Business',
                    style: flatbuttonStyle,
                  )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
