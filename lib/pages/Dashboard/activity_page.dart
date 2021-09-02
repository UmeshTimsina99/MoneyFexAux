import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/pages/Common/senderList_page.dart';
import 'package:moneyfex_auxagent/pages/Dashboard/blankactivity_page.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'dashboard_page.dart';
import 'fundAccount_Page.dart';
import 'menu_page.dart';

/// This is the stateful widget that the main application instantiates.
class ActivityPage extends StatefulWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _ActivityPageState extends State<ActivityPage> {
  int _selectedIndex = 0;
  // ignore: unused_field
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List _widgetOptions = [
    BlankActivityPage(),
    DashboardPage(),
    FundAccountPage(),
    SenderListPage(),
    MenuePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: primaryColor,
              icon: ImageIcon(
                AssetImage("assets/images/tabActivity.png"),
              ),
              label: 'Activity',
            ),
            BottomNavigationBarItem(
              backgroundColor: primaryColor,
              icon: ImageIcon(
                AssetImage("assets/images/tabDashboard.png"),
              ),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              backgroundColor: primaryColor,
              icon: ImageIcon(
                AssetImage("assets/images/tabFundAccount.png"),
              ),
              label: 'Fund Account',
            ),
            BottomNavigationBarItem(
              backgroundColor: primaryColor,
              icon: ImageIcon(
                AssetImage("assets/images/tabSenders.png"),
              ),
              label: 'Senders',
            ),
            BottomNavigationBarItem(
              backgroundColor: primaryColor,
              icon: ImageIcon(
                AssetImage("assets/images/tabMenu.png"),
              ),
              label: 'More',
            ),
          ],
          currentIndex: _selectedIndex,
          backgroundColor: primaryColor,
          selectedItemColor: whiteColor,
          unselectedItemColor: Colors.blue[100],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
