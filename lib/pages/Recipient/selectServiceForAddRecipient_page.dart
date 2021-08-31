import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/pages/Recipient/addMobileWalletRecipient_page.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

class SelectServiceForAddRecipientPage extends StatefulWidget {
  SelectServiceForAddRecipientPage({
    Key? key,
  }) : super(key: key);

  @override
  _SelectServiceForAddRecipientPageState createState() =>
      _SelectServiceForAddRecipientPageState();
}

class _SelectServiceForAddRecipientPageState
    extends State<SelectServiceForAddRecipientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        titleText: "Select service",
        leading: (IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            })),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: GridView.extent(
          padding: const EdgeInsets.all(25),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          maxCrossAxisExtent: 200.0,
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor,
                  border: Border.all(
                    color: primaryColor,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: IconButton(
                        icon: Image.asset(
                          "assets/images/bank.png",
                        ),
                        onPressed: () {
                          // navigateBankTransfer();
                          //openPage(context, (ctx) => AddBankAccountDepositRecipientPage());
                        },
                      )),
                      Text('Bank Account', style: titleStyle3)
                    ])),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor,
                  border: Border.all(
                    color: primaryColor,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: IconButton(
                        icon: Image.asset("assets/images/mobile-money.png"),
                        onPressed: () {
                          openPage(
                              context, (ctx) => AddMobileWalletRecipientPage());
                        },
                      )),
                      Text('Mobile Wallet', style: titleStyle3)
                    ])),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor,
                  border: Border.all(
                    color: primaryColor,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: IconButton(
                        icon: Image.asset("assets/images/cash-pickup.png"),
                        onPressed: () {
                          //openPage(context, (ctx) => AddCashPickupRecipientPage());
                        },
                      )),
                      Text('Cash Pickup', style: titleStyle3)
                    ])),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor,
                  border: Border.all(
                    color: primaryColor,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: IconButton(
                        icon: Image.asset("assets/images/kiipay.png"),
                        onPressed: () {
                          //openPage(context, (ctx) => AddKiipayRecipientPage());
                        },
                      )),
                      Text('KiiPay Wallet', style: titleStyle3)
                    ])),
          ],
        ),
      ),
    );
  }
}
