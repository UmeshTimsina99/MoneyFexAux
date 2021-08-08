import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';

Widget defaultButton(BuildContext context, String text,
    {Color textColor = Colors.white, Color? btnColor, Function? onPressed}) {
  btnColor = btnColor ?? primaryColor;

  return MaterialButton(
    shape:
        RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
    elevation: 10,
    minWidth: 310.0,
    height: 50,
    color: btnColor,
    child: new Text(text,
        style: new TextStyle(
            fontSize: 20.0, color: textColor, fontFamily: 'AndreasBecker')),
    onPressed: onPressed == null ? empty() : onPressed,
  );
}

Widget smallButton(BuildContext context, String text,
    {Color textColor = Colors.white,
    Color? btnColor,
    Function? onPressed,
    double minwwidth: 150.0}) {
  btnColor = btnColor ?? primaryColor;
  return MaterialButton(
    shape:
        RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
    elevation: 10,
    minWidth: minwwidth,
    height: 40,
    color: btnColor,
    child:
        new Text(text, style: new TextStyle(fontSize: 16.0, color: textColor)),
    onPressed: onPressed == null ? empty() : onPressed,
  );
}

empty() {}
