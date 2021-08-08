import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/utils/constants.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';

class SuccessPage extends StatefulWidget {
  Widget? bodyConTent;
  Widget? bodySubConTent;
  Widget bodyConTitle;
  Widget? upperContent;

  // String upperText;
  // String upperSubtext;

  String? btnText;
  SuccessIcon successIcon;
  Function? onDone;
  // Widget whiteBackgroundButton;

  SuccessPage({
    this.upperContent,
    required this.bodyConTitle,
    this.bodyConTent,
    this.bodySubConTent,

    // this.upperText,
    // this.upperSubtext,
    this.btnText,
    this.onDone,
    required this.successIcon,

    //this.whiteBackgroundButton,
  });

  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _successpage(),
            SizedBox(height: 20),
            defaultButton(context, widget.btnText ?? 'Done',
                onPressed: widget.onDone ??
                    () {
                      Navigator.pop(context);
                    }),
            SizedBox(
              height: 30,
            ),
            // SizedBox(child: widget.whiteBackgroundButton),
          ],
        ),
      )),
    );
  }

  Widget _successpage() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          SizedBox(
            child: widget.upperContent,
          ),
          SizedBox(height: 80),
          widget.successIcon == SuccessIcon.success
              ? Image.asset(
                  'assets/images/success.png',
                  height: 96,
                  width: 96,
                )
              : Image.asset(
                  'assets/images/info.png',
                  height: 96,
                  width: 96,
                ),
          SizedBox(height: 40),
          SizedBox(child: widget.bodyConTitle),
          SizedBox(height: 10),
          SizedBox(child: widget.bodyConTent),
          SizedBox(height: 5),
          SizedBox(child: widget.bodySubConTent),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
