// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future newCustomAction(Future<dynamic> Function()? sendScreen) async {
  Future.delayed(
    Duration(seconds: 3),
    () {
      sendScreen!();
    },
  );
}
