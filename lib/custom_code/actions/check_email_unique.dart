// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Returns true if email address is in use.
Future<bool?> checkEmailUnique(String? myemailaddress) async {
  QuerySnapshot emlCheck = await FirebaseFirestore.instance
      .collection('users')
      .where('email', isEqualTo: myemailaddress)
      .get();

  if (emlCheck.docs.isNotEmpty) {
    return true;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
