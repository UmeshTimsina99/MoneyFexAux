import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

Widget indicator(BuildContext context, double percent) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: new LinearPercentIndicator(
            // width: MediaQuery.of(context).size.width / 1.5,
            lineHeight: 8.0,
            percent: percent,
            linearStrokeCap: LinearStrokeCap.roundAll,
            backgroundColor: Colors.grey,
            progressColor: primaryColor,
          ),
        ),
      ],
    ),
  );
}
