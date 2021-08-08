import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/pages/Dashboard/blankactivity_page.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';

import 'dashboard_page.dart';

/// This is the stateful widget that the main application instantiates.
class ActivityPage extends StatefulWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _ActivityPageState extends State<ActivityPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List _widgetOptions = [
    DashboardPage(),
    BlankActivityPage(),
    BlankActivityPage(),
    BlankActivityPage(),
    BlankActivityPage(),
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
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/tabActivity.png"),
              ),
              label: 'Activity',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/tabDashboard.png"),
              ),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/tabFundAccount.png"),
              ),
              label: 'Fund Account',
            ),
            // BottomNavigationBarItem(
            //   icon: ImageIcon(
            //     AssetImage("assets/images/tabFundAccount.png"),
            //   ),
            //   label: 'Fund Account',
            // ),
            // BottomNavigationBarItem(
            //   icon: ImageIcon(
            //     AssetImage("assets/images/tabFundAccount.png"),
            //   ),
            //   label: 'Activity',
            // ),
            // BottomNavigationBarItem(
            //   icon: ImageIcon(
            //     AssetImage("assets/images/tabActivity.png"),
            //   ),
            //   label: 'Activity',
            // ),
            // BottomNavigationBarItem(
            //   icon: ImageIcon(
            //     AssetImage("assets/images/tabActivity.png"),
            //   ),
            //   label: 'Activity',
            // ),
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