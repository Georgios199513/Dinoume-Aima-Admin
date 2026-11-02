// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart' hide Type;

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ChunkOrderRangeStruct extends FFFirebaseStruct {
  ChunkOrderRangeStruct({
    int? from,
    int? to,
    String? fromTime,
    String? separator,
    String? toTime,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _from = from,
        _to = to,
        _fromTime = fromTime,
        _separator = separator,
        _toTime = toTime,
        super(firestoreUtilData);

  // "From" field.
  int? _from;
  int get from => _from ?? 0;
  set from(int? val) => _from = val;

  void incrementFrom(int amount) => from = from + amount;

  bool hasFrom() => _from != null;

  // "To" field.
  int? _to;
  int get to => _to ?? 0;
  set to(int? val) => _to = val;

  void incrementTo(int amount) => to = to + amount;

  bool hasTo() => _to != null;

  // "FromTime" field.
  String? _fromTime;
  String get fromTime => _fromTime ?? '';
  set fromTime(String? val) => _fromTime = val;

  bool hasFromTime() => _fromTime != null;

  // "Separator" field.
  String? _separator;
  String get separator => _separator ?? '';
  set separator(String? val) => _separator = val;

  bool hasSeparator() => _separator != null;

  // "ToTime" field.
  String? _toTime;
  String get toTime => _toTime ?? '';
  set toTime(String? val) => _toTime = val;

  bool hasToTime() => _toTime != null;

  static ChunkOrderRangeStruct fromMap(Map<String, dynamic> data) =>
      ChunkOrderRangeStruct(
        from: castToType<int>(data['From']),
        to: castToType<int>(data['To']),
        fromTime: data['FromTime'] as String?,
        separator: data['Separator'] as String?,
        toTime: data['ToTime'] as String?,
      );

  static ChunkOrderRangeStruct? maybeFromMap(dynamic data) => data is Map
      ? ChunkOrderRangeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'From': _from,
        'To': _to,
        'FromTime': _fromTime,
        'Separator': _separator,
        'ToTime': _toTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'From': serializeParam(
          _from,
          ParamType.int,
        ),
        'To': serializeParam(
          _to,
          ParamType.int,
        ),
        'FromTime': serializeParam(
          _fromTime,
          ParamType.String,
        ),
        'Separator': serializeParam(
          _separator,
          ParamType.String,
        ),
        'ToTime': serializeParam(
          _toTime,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChunkOrderRangeStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChunkOrderRangeStruct(
        from: deserializeParam(
          data['From'],
          ParamType.int,
          false,
        ),
        to: deserializeParam(
          data['To'],
          ParamType.int,
          false,
        ),
        fromTime: deserializeParam(
          data['FromTime'],
          ParamType.String,
          false,
        ),
        separator: deserializeParam(
          data['Separator'],
          ParamType.String,
          false,
        ),
        toTime: deserializeParam(
          data['ToTime'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChunkOrderRangeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChunkOrderRangeStruct &&
        from == other.from &&
        to == other.to &&
        fromTime == other.fromTime &&
        separator == other.separator &&
        toTime == other.toTime;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([from, to, fromTime, separator, toTime]);
}

ChunkOrderRangeStruct createChunkOrderRangeStruct({
  int? from,
  int? to,
  String? fromTime,
  String? separator,
  String? toTime,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChunkOrderRangeStruct(
      from: from,
      to: to,
      fromTime: fromTime,
      separator: separator,
      toTime: toTime,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChunkOrderRangeStruct? updateChunkOrderRangeStruct(
  ChunkOrderRangeStruct? chunkOrderRange, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chunkOrderRange
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChunkOrderRangeStructData(
  Map<String, dynamic> firestoreData,
  ChunkOrderRangeStruct? chunkOrderRange,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chunkOrderRange == null) {
    return;
  }
  if (chunkOrderRange.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chunkOrderRange.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chunkOrderRangeData =
      getChunkOrderRangeFirestoreData(chunkOrderRange, forFieldValue);
  final nestedData =
      chunkOrderRangeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chunkOrderRange.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChunkOrderRangeFirestoreData(
  ChunkOrderRangeStruct? chunkOrderRange, [
  bool forFieldValue = false,
]) {
  if (chunkOrderRange == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chunkOrderRange.toMap());

  // Add any Firestore field values
  mapToFirestore(chunkOrderRange.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChunkOrderRangeListFirestoreData(
  List<ChunkOrderRangeStruct>? chunkOrderRanges,
) =>
    chunkOrderRanges
        ?.map((e) => getChunkOrderRangeFirestoreData(e, true))
        .toList() ??
    [];
