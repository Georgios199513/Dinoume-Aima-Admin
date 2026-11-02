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

Future bulkDeleteEvents() async {
  final instance = FirebaseFirestore.instance;
  final batch = instance.batch();

  var collection = instance.collection('Events');
// here you will delete all tasks, beware!!!
  var snapshots = await collection.where('hospitalsCreated').get();

  for (var doc in snapshots.docs) {
    batch.delete(doc.reference);
  }
  await batch.commit();
}
