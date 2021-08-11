import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:moneyfex_auxagent/pages/SetFee/exchangeFeeList_page.dart';
import 'package:moneyfex_auxagent/pages/accountbalance_page.dart';
import 'package:moneyfex_auxagent/utils/extensions.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';

class DashboardPage extends StatefulWidget {
  final VoidCallback? ontap;

  DashboardPage({Key? key, this.ontap}) : super(key: key);
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  // void initState() {
  //   super.initState();
  //   showBottomSheet(context);
  // }

  final PageController controller = PageController(initialPage: 0);
  //int senderId = RSession.senderId;
  bool _load = false;
  bool bottomSheetVisible = false;
  int _notetake = 10;
  int _noteskip = 0;
  int bottomSelectedIndex = 0;
  int _transskip = 0;
  //  List<NotificationModel> listofnotification = [];
  List<dynamic> listofnotification = [];
  void getNotificationHistories(int skip, int take) {
    //   NotificationService notificationServices = NotificationService();

    //   notificationServices
    //       .getNotificationList(senderId, skip, take)
    //       .then((value) {
    //     setState(() {
    //       _load = false;
    //       listofnotification = value.data;
    //       _noteskip = _noteskip + take;
    //     });
    //   });
  }

  Widget build(BuildContext context) {
    Widget loadingIndicator = _load
        ? new Container(
            color: Colors.transparent,
            width: 70.0,
            height: 70.0,
            child: new Padding(
                padding: const EdgeInsets.all(5.0),
                child: new Center(child: new CircularProgressIndicator())),
          )
        : new Container();
    bool _switchValue = false;
    return Scaffold(
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Notification',
                        style: navy,
                      ),
                    )),
                  ),
                  SizedBox(width: 70),
                  Switch(
                      value: _switchValue,
                      onChanged: (bool value) {
                        setState(() {
                          _switchValue = value;
                        });
                      }),
                ],
              ),
              Divider(
                thickness: 1,
              ),
              new Align(
                child: loadingIndicator,
                alignment: FractionalOffset.center,
              ),
              Container(
                height: 620,
                child: LazyLoadScrollView(
                  onEndOfPage: () {
                    getNotificationHistories(_noteskip, _notetake);
                  },
                  scrollOffset: 100,
                  child: ListView.builder(
                      itemCount: listofnotification.length,
                      itemBuilder: notification),
                ),
              ),
              smallButton(context, 'View All', onPressed: () {
                //openPage(context, (ctx) => NotificationalistPage());
              }),
            ],
          ),
        ),
      ),
      drawerEnableOpenDragGesture: false,
      appBar: defaultAppBar(
          titleText: "Global Emarket",
          actions: [
            Builder(
                builder: (context) => // Ensure Scaffold is in context
                    IconButton(
                        iconSize: 35,
                        icon: Icon(Icons.notifications_none_outlined),
                        onPressed: () {
                          setState(() {
                            _load = true;
                          });
                          getNotificationHistories(_noteskip, _notetake);
                          Scaffold.of(context).openEndDrawer();
                        }))
          ],
          leading: new Container()),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    color: Colors.red,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      openPage(
                          context,
                          (ctx) => AccountBalancePage(
                              //model: widget.model,
                              ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 15),
                      child: Card(
                          elevation: 10,
                          child: SizedBox(
                            height: 70,
                            width: MediaQuery.of(context).size.width / 1.3,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: ListTile(
                                  title: Text(
                                    '50,000 GBP',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 21,
                                        color: primaryColor),
                                    // TextStyle(fontWeight: FontWeight.normal, color: primaryColor, fontSize: 22);
                                  ),
                                  subtitle: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: Text(
                                      'Account Balance',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14,
                                          color: blackColor),
                                      // TextStyle(fontWeight: FontWeight.normal, color: primaryColor, fontSize: 22);
                                    ),
                                  ),
                                  trailing: CircleAvatar(
                                    backgroundColor: primaryColor,
                                    radius: 25,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.card_travel,
                                          color: whiteColor,
                                        ),
                                        Text('GBP',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: whiteColor,
                                                fontWeight: FontWeight.bold)),
                                        // Text('GBP')
                                      ],
                                    ),
                                    // child: ,
                                  )),
                            ),
                          )),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 50),
                  child: Text(
                    'Exchange rate',
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          alignment: Alignment.centerRight,
                          iconSize: 25,
                          color: primaryColor,
                          icon: Icon(Icons.chevron_left),
                          onPressed: () {
                            setState(() {
                              controller.animateToPage(bottomSelectedIndex - 1,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            });
                          }),
                      Container(
                        height: 50,
                        padding: EdgeInsets.all(0),
                        width: MediaQuery.of(context).size.width / 1.4,
                        child: PageView(
                          onPageChanged: (index) {
                            setState(() {
                              bottomSelectedIndex = index;
                            });
                          },
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          controller: controller,
                          children: <Widget>[
                            Center(
                              child: Text(
                                'GBP/NGN = 665.01 GBP/XAF = 780.03',
                                style: TextStyle(
                                    color: primaryColor, fontSize: 16),
                              ),
                            ),
                            Center(
                              child: Text(
                                'GBP/NGN = 665.01 GBP/XAF = 780.03',
                                style: TextStyle(
                                    color: primaryColor, fontSize: 16),
                              ),
                            ),
                            Center(
                              child: Text(
                                'GBP/NGN = 665.01 GBP/XAF = 780.03',
                                style: TextStyle(
                                    color: primaryColor, fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      ),
                      IconButton(
                          alignment: Alignment.centerLeft,
                          iconSize: 25,
                          color: primaryColor,
                          icon: Icon(Icons.chevron_right),
                          onPressed: () {
                            setState(() {
                              controller.animateToPage(bottomSelectedIndex + 1,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                              //showBottomSheet(context);
                            });
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Container(
                child: GridView.extent(
                  // physics: NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(30),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  maxCrossAxisExtent: 200.0,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
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
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    child: IconButton(
                                  icon: Image.asset(
                                    "assets/images/dashboardExchangeRate.png",
                                  ),
                                  onPressed: () {
                                    // navigateBankTransfer();
                                    openPage(context,
                                        (ctx) => ExchangeFeeListPage());
                                  },
                                )),
                                Column(
                                  children: [
                                    Text('Set ', style: titleStyle3),
                                    Text('Exchage rate', style: titleStyle3),
                                  ],
                                )
                              ])),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
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
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    child: IconButton(
                                  icon: Image.asset(
                                      "assets/images/dashboardExchangeRate.png"),
                                  onPressed: () {
                                    //openPage(context, (ctx) => MobileWalletPage());
                                  },
                                )),
                                Column(
                                  children: [
                                    Text('Set', style: titleStyle3),
                                    Text('Transfer Fee', style: titleStyle3),
                                  ],
                                )
                              ])),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
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
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    child: IconButton(
                                  icon: Image.asset(
                                      "assets/images/dashboardExchangeRate.png"),
                                  onPressed: () {
                                    //openPage(context, (ctx) => CashPickupPage());
                                  },
                                )),
                                Column(
                                  children: [
                                    Text('Set', style: titleStyle3),
                                    Text('Exchage rate', style: titleStyle3),
                                  ],
                                )
                              ])),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
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
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    child: IconButton(
                                  icon: Image.asset(
                                      "assets/images/dashboardExchangeRate.png"),
                                  onPressed: null,
                                )),
                                Column(
                                  children: [
                                    Text('Accounting', style: titleStyle3),
                                  ],
                                )
                              ])),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget notification(BuildContext context, int index) {
    var result = listofnotification[index];

    return Container(
      color: (index % 2 == 0) ? Colors.transparent : fromHex('#EBEBEB'),
      child: ListTile(
          subtitle: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              result.title,
              style: navyStyle,
            ),
            Text(
              'Wallet No:' + result.walletNo,
              style: diffrentTextstyle,
            ),
            Text(
              'Amount:' + result.amount,
              style: diffrentTextstyle,
            ),
            Text(
              result.dateTime,
              style: titleStyle5,
            ),
            Card(
              color: fromHex('#003D55'),
              child: Text(
                result.statusonHour,
                style: TextStyle(color: whiteColor),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
