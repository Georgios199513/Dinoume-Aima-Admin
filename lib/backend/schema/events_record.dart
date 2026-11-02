import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NameOfEvent" field.
  String? _nameOfEvent;
  String get nameOfEvent => _nameOfEvent ?? '';
  bool hasNameOfEvent() => _nameOfEvent != null;

  // "Location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "EventDate" field.
  DateTime? _eventDate;
  DateTime? get eventDate => _eventDate;
  bool hasEventDate() => _eventDate != null;

  // "Details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "Address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  bool hasAddress() => _address != null;

  // "SeatsTotalPerTimeChunk" field.
  int? _seatsTotalPerTimeChunk;
  int get seatsTotalPerTimeChunk => _seatsTotalPerTimeChunk ?? 0;
  bool hasSeatsTotalPerTimeChunk() => _seatsTotalPerTimeChunk != null;

  // "TimeRange" field.
  ChunkOrderRangeStruct? _timeRange;
  ChunkOrderRangeStruct get timeRange => _timeRange ?? ChunkOrderRangeStruct();
  bool hasTimeRange() => _timeRange != null;

  // "SeatsMax" field.
  int? _seatsMax;
  int get seatsMax => _seatsMax ?? 0;
  bool hasSeatsMax() => _seatsMax != null;

  // "ToDelete" field.
  bool? _toDelete;
  bool get toDelete => _toDelete ?? false;
  bool hasToDelete() => _toDelete != null;

  // "UsersParticipated" field.
  List<DocumentReference>? _usersParticipated;
  List<DocumentReference> get usersParticipated =>
      _usersParticipated ?? const [];
  bool hasUsersParticipated() => _usersParticipated != null;

  // "isSuccess" field.
  bool? _isSuccess;
  bool get isSuccess => _isSuccess ?? false;
  bool hasIsSuccess() => _isSuccess != null;

  // "NewNotifiaction" field.
  int? _newNotifiaction;
  int get newNotifiaction => _newNotifiaction ?? 0;
  bool hasNewNotifiaction() => _newNotifiaction != null;

  // "updated_time" field.
  DateTime? _updatedTime;
  DateTime? get updatedTime => _updatedTime;
  bool hasUpdatedTime() => _updatedTime != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "TimeSlotToRemove" field.
  List<DocumentReference>? _timeSlotToRemove;
  List<DocumentReference> get timeSlotToRemove => _timeSlotToRemove ?? const [];
  bool hasTimeSlotToRemove() => _timeSlotToRemove != null;

  // "TimeSlotOrderToRemove" field.
  List<int>? _timeSlotOrderToRemove;
  List<int> get timeSlotOrderToRemove => _timeSlotOrderToRemove ?? const [];
  bool hasTimeSlotOrderToRemove() => _timeSlotOrderToRemove != null;

  // "EventHospitalPlanner" field.
  DocumentReference? _eventHospitalPlanner;
  DocumentReference? get eventHospitalPlanner => _eventHospitalPlanner;
  bool hasEventHospitalPlanner() => _eventHospitalPlanner != null;

  // "EventUserHospitalPlanner" field.
  DocumentReference? _eventUserHospitalPlanner;
  DocumentReference? get eventUserHospitalPlanner => _eventUserHospitalPlanner;
  bool hasEventUserHospitalPlanner() => _eventUserHospitalPlanner != null;

  // "SaveForLater" field.
  bool? _saveForLater;
  bool get saveForLater => _saveForLater ?? false;
  bool hasSaveForLater() => _saveForLater != null;

  // "eventState" field.
  String? _eventState;
  String get eventState => _eventState ?? '';
  bool hasEventState() => _eventState != null;

  // "bloodAppointmentList" field.
  List<DocumentReference>? _bloodAppointmentList;
  List<DocumentReference> get bloodAppointmentList =>
      _bloodAppointmentList ?? const [];
  bool hasBloodAppointmentList() => _bloodAppointmentList != null;

  void _initializeFields() {
    _nameOfEvent = snapshotData['NameOfEvent'] as String?;
    _location = snapshotData['Location'] as LatLng?;
    _eventDate = snapshotData['EventDate'] as DateTime?;
    _details = snapshotData['Details'] as String?;
    _address = snapshotData['Address'] is AddressStruct
        ? snapshotData['Address']
        : AddressStruct.maybeFromMap(snapshotData['Address']);
    _seatsTotalPerTimeChunk =
        castToType<int>(snapshotData['SeatsTotalPerTimeChunk']);
    _timeRange = snapshotData['TimeRange'] is ChunkOrderRangeStruct
        ? snapshotData['TimeRange']
        : ChunkOrderRangeStruct.maybeFromMap(snapshotData['TimeRange']);
    _seatsMax = castToType<int>(snapshotData['SeatsMax']);
    _toDelete = snapshotData['ToDelete'] as bool?;
    _usersParticipated = getDataList(snapshotData['UsersParticipated']);
    _isSuccess = snapshotData['isSuccess'] as bool?;
    _newNotifiaction = castToType<int>(snapshotData['NewNotifiaction']);
    _updatedTime = snapshotData['updated_time'] as DateTime?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _timeSlotToRemove = getDataList(snapshotData['TimeSlotToRemove']);
    _timeSlotOrderToRemove = getDataList(snapshotData['TimeSlotOrderToRemove']);
    _eventHospitalPlanner =
        snapshotData['EventHospitalPlanner'] as DocumentReference?;
    _eventUserHospitalPlanner =
        snapshotData['EventUserHospitalPlanner'] as DocumentReference?;
    _saveForLater = snapshotData['SaveForLater'] as bool?;
    _eventState = snapshotData['eventState'] as String?;
    _bloodAppointmentList = getDataList(snapshotData['bloodAppointmentList']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createEventsRecordData({
  String? nameOfEvent,
  LatLng? location,
  DateTime? eventDate,
  String? details,
  AddressStruct? address,
  int? seatsTotalPerTimeChunk,
  ChunkOrderRangeStruct? timeRange,
  int? seatsMax,
  bool? toDelete,
  bool? isSuccess,
  int? newNotifiaction,
  DateTime? updatedTime,
  DateTime? createdTime,
  DocumentReference? eventHospitalPlanner,
  DocumentReference? eventUserHospitalPlanner,
  bool? saveForLater,
  String? eventState,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NameOfEvent': nameOfEvent,
      'Location': location,
      'EventDate': eventDate,
      'Details': details,
      'Address': AddressStruct().toMap(),
      'SeatsTotalPerTimeChunk': seatsTotalPerTimeChunk,
      'TimeRange': ChunkOrderRangeStruct().toMap(),
      'SeatsMax': seatsMax,
      'ToDelete': toDelete,
      'isSuccess': isSuccess,
      'NewNotifiaction': newNotifiaction,
      'updated_time': updatedTime,
      'created_time': createdTime,
      'EventHospitalPlanner': eventHospitalPlanner,
      'EventUserHospitalPlanner': eventUserHospitalPlanner,
      'SaveForLater': saveForLater,
      'eventState': eventState,
    }.withoutNulls,
  );

  // Handle nested data for "Address" field.
  addAddressStructData(firestoreData, address, 'Address');

  // Handle nested data for "TimeRange" field.
  addChunkOrderRangeStructData(firestoreData, timeRange, 'TimeRange');

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nameOfEvent == e2?.nameOfEvent &&
        e1?.location == e2?.location &&
        e1?.eventDate == e2?.eventDate &&
        e1?.details == e2?.details &&
        e1?.address == e2?.address &&
        e1?.seatsTotalPerTimeChunk == e2?.seatsTotalPerTimeChunk &&
        e1?.timeRange == e2?.timeRange &&
        e1?.seatsMax == e2?.seatsMax &&
        e1?.toDelete == e2?.toDelete &&
        listEquality.equals(e1?.usersParticipated, e2?.usersParticipated) &&
        e1?.isSuccess == e2?.isSuccess &&
        e1?.newNotifiaction == e2?.newNotifiaction &&
        e1?.updatedTime == e2?.updatedTime &&
        e1?.createdTime == e2?.createdTime &&
        listEquality.equals(e1?.timeSlotToRemove, e2?.timeSlotToRemove) &&
        listEquality.equals(
            e1?.timeSlotOrderToRemove, e2?.timeSlotOrderToRemove) &&
        e1?.eventHospitalPlanner == e2?.eventHospitalPlanner &&
        e1?.eventUserHospitalPlanner == e2?.eventUserHospitalPlanner &&
        e1?.saveForLater == e2?.saveForLater &&
        e1?.eventState == e2?.eventState &&
        listEquality.equals(e1?.bloodAppointmentList, e2?.bloodAppointmentList);
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.nameOfEvent,
        e?.location,
        e?.eventDate,
        e?.details,
        e?.address,
        e?.seatsTotalPerTimeChunk,
        e?.timeRange,
        e?.seatsMax,
        e?.toDelete,
        const ListEquality().hash(e?.usersParticipated),
        e?.isSuccess,
        e?.newNotifiaction,
        e?.updatedTime,
        e?.createdTime,
        const ListEquality().hash(e?.timeSlotToRemove),
        const ListEquality().hash(e?.timeSlotOrderToRemove),
        e?.eventHospitalPlanner,
        e?.eventUserHospitalPlanner,
        e?.saveForLater,
        e?.eventState,
        const ListEquality().hash(e?.bloodAppointmentList)
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
