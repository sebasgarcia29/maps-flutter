import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showLoadingMessage(BuildContext context) {
  //Android
  if (Platform.isAndroid) {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Loading please...'),
        content: LinearProgressIndicator(),
      ),
    );
    return;
  } else {
    showCupertinoDialog(
      context: context,
      builder: (context) => const CupertinoAlertDialog(
        title: Text('Loading wait a moment....'),
        content: CupertinoActivityIndicator(),
      ),
    );
  }
}
