import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/utils/constants.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';

// ignore: must_be_immutable
class AddRecipientSuccessPage extends StatefulWidget {
  Widget? bodyConTitle;
  Widget? recipientName;
  Widget? upperContent;

  // String upperText;
  // String upperSubtext;

  String? btnText;
  SuccessIcon? successIcon;
  Function? onDone;
  // Widget whiteBackgroundButton;

  AddRecipientSuccessPage({
    this.upperContent,
    this.bodyConTitle,
    this.recipientName,

    // this.upperText,
    // this.upperSubtext,
    this.btnText,
    this.onDone,
    required this.successIcon,

    //this.whiteBackgroundButton,
  });

  @override
  _AddRecipientSuccessPageState createState() =>
      _AddRecipientSuccessPageState();
}

class _AddRecipientSuccessPageState extends State<AddRecipientSuccessPage> {
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
          SizedBox(height: 5),
          SizedBox(child: widget.recipientName),
        ],
      ),
    );
  }
}
