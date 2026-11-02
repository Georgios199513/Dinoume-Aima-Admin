import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendHospitalTemporaryCodeCall {
  static Future<ApiCallResponse> call({
    String? to = 'grigoriadis.georges@gmail.com',
    String? subject = 'Test',
    String? templateID = 'Ap5OQeDxxBtjY6CBuvW2',
    String? medium = 'email',
    String? bloodCenterName = 'EKEA',
    String? temporaryPassword = 'test123',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Send Hospital Temporary Code',
      apiUrl: 'https://api.abracadalo.com/notification/send',
      callType: ApiCallType.GET,
      headers: {
        'api-key': 'BNpmrJGOjZHxFXXyqqVN',
      },
      params: {
        'to': to,
        'subject': subject,
        'templateID': templateID,
        'medium': medium,
        'bloodCenterName': bloodCenterName,
        'temporaryPassword': temporaryPassword,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetLatLngFromAddressCall {
  static Future<ApiCallResponse> call({
    String? address = 'Ακαδημίας 76, Αθήνα',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get LatLng from address',
      apiUrl: 'https://maps.googleapis.com/maps/api/geocode/json?',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'address': "Ακαδημίας 76, Αθήνα",
        '+CA&key': "AIzaSyDMVyZ6CLcN-5Gq154POBx6l66o5k9Unp8",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic geometry(dynamic response) => getJsonField(
        response,
        r'''$.results[:].geometry.location''',
      );
  static dynamic latidute(dynamic response) => getJsonField(
        response,
        r'''$.results[:].geometry.location.lat''',
      );
  static dynamic longitude(dynamic response) => getJsonField(
        response,
        r'''$.results[:].geometry.location.lng''',
      );
}

class SendHospitalAccountConfirmationCall {
  static Future<ApiCallResponse> call({
    String? to = 'grigoriadis.georges@gmail.com',
    String? subject = 'Welcome',
    String? bloodCenterName = 'Ε.ΚΕ.Α.',
    String? bloodCenterTempPassword = 'test',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Send Hospital Account Confirmation',
      apiUrl: 'https://api.abracadalo.com/notification/send',
      callType: ApiCallType.GET,
      headers: {
        'api-key': 'BNpmrJGOjZHxFXXyqqVN',
      },
      params: {
        'to': to,
        'subject': subject,
        'templateID': "ry8hTLROeoS0u24NIubT",
        'medium': "email",
        'bloodCenterName': bloodCenterName,
        'bloodCenterTempPassword': bloodCenterTempPassword,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
