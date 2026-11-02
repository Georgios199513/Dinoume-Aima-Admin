import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart' hide Type;
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double? returnDistanceBetweenTwoPoints(
  LatLng? positionOne,
  LatLng? positionTwo,
) {
  // calculate the distance between two points on a spheroid and return distance as double
  var p = 0.017453292519943295;
  var a = 0.5 -
      math.cos((positionTwo!.latitude - positionOne!.latitude) * p) / 2 +
      math.cos(positionOne.latitude * p) *
          math.cos(positionTwo.latitude * p) *
          (1 - math.cos((positionTwo.longitude - positionOne.longitude) * p)) /
          2;
  double result = 12742 * math.asin(math.sqrt(a));
  // uncomment the line below if you want the result to be rounded
  // double finalResult = result.roundToDouble();
  // if you uncommented the line above, you have to replace result in the line below with finalResult
  return result;
}

int? getLength(
  List<DocumentReference>? myList,
  bool isActive,
  int numberSeats,
) {
  // How to get the number of Firestore documents
  if (myList == null || myList.isEmpty) {
    return 0;
  }

  return myList
      .where((x) => isActive == true && numberSeats > 0)
      .toList()
      .length;
}

bool showSearchResult(
  String textSearchFor,
  String textSearchIn,
) {
  return textSearchIn.toLowerCase().contains(textSearchFor.toLowerCase());
}

int availableSeats(
  int totalSeatsPerChunk,
  int bookedSeats,
  int numberOfChunks,
) {
  // Add your function code here!
  return ((totalSeatsPerChunk * numberOfChunks) - bookedSeats);
}

int totalSeatsEvent(
  int totalSeatsPerChunk,
  int numberOfChunks,
) {
  // Add your function code here!
  return (totalSeatsPerChunk * numberOfChunks);
}

bool testDaysBetween2DatesLess90(
  DateTime lasteEventDate,
  DateTime currenrDate,
) {
  // test if the number between 2 dates is less than 90 days
  final result = currenrDate.difference(lasteEventDate);
  if (result.inDays.abs() < 90) {
    return true;
  } else {
    return false;
  }
}

int daysBetween2Dates(
  DateTime dateFrom,
  DateTime dateTo,
) {
  // if negative return 0
  final diff = dateTo.difference(dateFrom);

  if (diff.isNegative) return 0;

  return diff.inDays + 1;
}

double convertToPercentage(
  int value,
  int maxValue,
) {
  // convert to percentage and if result is NaN write 0
  return (value / maxValue * 100).isNaN ? 0 : (value / maxValue * 100);
}

int addXPerCent(
  double percentageToAdd,
  int numberToAddTo,
) {
  // add 10% to 100
  return (numberToAddTo + ((percentageToAdd / 100) * numberToAddTo)).round();
}

LatLng convertToGeopoint(
  double latitude,
  double longitude,
) {
  // convert latitude and longitude to geopoint
  return LatLng(
    latitude,
    longitude,
  );
}

int numberBetween2TimeChunks(
  int from,
  int to,
  int deletedTimeChunks,
) {
  // Add your function code here!

  return (to - from) - deletedTimeChunks;
}

int calculateHeight(
  int padding,
  int containerHeight,
  int index,
) {
  return (padding + containerHeight) * index;
}

DateTime getTodayDate() {
  // get today date
  var now = DateTime.now();
  return DateTime(now.year, now.month, now.day);
}
