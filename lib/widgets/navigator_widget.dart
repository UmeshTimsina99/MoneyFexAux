import 'package:flutter/material.dart';

void openPage(context, Function(BuildContext ctx) builder) {
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: builder == null ? getemptyfunction() : builder));
}

getemptyfunction() => getemptyfunction();

void popUntil(BuildContext context, int pageCount) {
  var count = 0;
  Navigator.popUntil(context, (route) {
    return count++ == pageCount;
  });
}
