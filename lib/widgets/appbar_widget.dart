import 'package:flutter/material.dart';
import 'color_widget.dart';

AppBar defaultAppBar({
  Widget? leading,
  String titleText: "",
  List<Widget>? actions,
  Color? backgroundColor,
}) {
  return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: backgroundColor == null ? primaryColor : primaryColor,
      leading: leading,
      actions: actions == null ? [] : actions,
      title: Text(
        titleText,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ));
}
