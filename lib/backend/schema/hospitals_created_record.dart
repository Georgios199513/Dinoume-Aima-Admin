import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HospitalsCreatedRecord extends FirestoreRecord {
  HospitalsCreatedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ShortName" field.
  String? _shortName;
  String get shortName => _shortName ?? '';
  bool hasShortName() => _shortName != null;

  // "LongName" field.
  String? _longName;
  String get longName => _longName ?? '';
  bool hasLongName() => _longName != null;

  // "CenterCode" field.
  int? _centerCode;
  int get centerCode => _centerCode ?? 0;
  bool hasCenterCode() => _centerCode != null;

  // "HospitalPassword" field.
  String? _hospitalPassword;
  String get hospitalPassword => _hospitalPassword ?? '';
  bool hasHospitalPassword() => _hospitalPassword != null;

  // "FirstConnections" field.
  bool? _firstConnections;
  bool get firstConnections => _firstConnections ?? false;
  bool hasFirstConnections() => _firstConnections != null;

  // "Address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  bool hasAddress() => _address != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "TelNumber" field.
  String? _telNumber;
  String get telNumber => _telNumber ?? '';
  bool hasTelNumber() => _telNumber != null;

  // "HospitalVerified" field.
  bool? _hospitalVerified;
  bool get hospitalVerified => _hospitalVerified ?? false;
  bool hasHospitalVerified() => _hospitalVerified != null;

  // "HospitalsUsers" field.
  List<DocumentReference>? _hospitalsUsers;
  List<DocumentReference> get hospitalsUsers => _hospitalsUsers ?? const [];
  bool hasHospitalsUsers() => _hospitalsUsers != null;

  // "Events" field.
  List<DocumentReference>? _events;
  List<DocumentReference> get events => _events ?? const [];
  bool hasEvents() => _events != null;

  // "Region" field.
  String? _region;
  String get region => _region ?? '';
  bool hasRegion() => _region != null;

  // "UpdatedDate" field.
  DateTime? _updatedDate;
  DateTime? get updatedDate => _updatedDate;
  bool hasUpdatedDate() => _updatedDate != null;

  // "CreatedDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  void _initializeFields() {
    _shortName = snapshotData['ShortName'] as String?;
    _longName = snapshotData['LongName'] as String?;
    _centerCode = castToType<int>(snapshotData['CenterCode']);
    _hospitalPassword = snapshotData['HospitalPassword'] as String?;
    _firstConnections = snapshotData['FirstConnections'] as bool?;
    _address = snapshotData['Address'] is AddressStruct
        ? snapshotData['Address']
        : AddressStruct.maybeFromMap(snapshotData['Address']);
    _email = snapshotData['Email'] as String?;
    _telNumber = snapshotData['TelNumber'] as String?;
    _hospitalVerified = snapshotData['HospitalVerified'] as bool?;
    _hospitalsUsers = getDataList(snapshotData['HospitalsUsers']);
    _events = getDataList(snapshotData['Events']);
    _region = snapshotData['Region'] as String?;
    _updatedDate = snapshotData['UpdatedDate'] as DateTime?;
    _createdDate = snapshotData['CreatedDate'] as DateTime?;
    _isActive = snapshotData['isActive'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hospitalsCreated');

  static Stream<HospitalsCreatedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HospitalsCreatedRecord.fromSnapshot(s));

  static Future<HospitalsCreatedRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HospitalsCreatedRecord.fromSnapshot(s));

  static HospitalsCreatedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HospitalsCreatedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HospitalsCreatedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HospitalsCreatedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HospitalsCreatedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HospitalsCreatedRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createHospitalsCreatedRecordData({
  String? shortName,
  String? longName,
  int? centerCode,
  String? hospitalPassword,
  bool? firstConnections,
  AddressStruct? address,
  String? email,
  String? telNumber,
  bool? hospitalVerified,
  String? region,
  DateTime? updatedDate,
  DateTime? createdDate,
  bool? isActive,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ShortName': shortName,
      'LongName': longName,
      'CenterCode': centerCode,
      'HospitalPassword': hospitalPassword,
      'FirstConnections': firstConnections,
      'Address': AddressStruct().toMap(),
      'Email': email,
      'TelNumber': telNumber,
      'HospitalVerified': hospitalVerified,
      'Region': region,
      'UpdatedDate': updatedDate,
      'CreatedDate': createdDate,
      'isActive': isActive,
    }.withoutNulls,
  );

  // Handle nested data for "Address" field.
  addAddressStructData(firestoreData, address, 'Address');

  return firestoreData;
}

class HospitalsCreatedRecordDocumentEquality
    implements Equality<HospitalsCreatedRecord> {
  const HospitalsCreatedRecordDocumentEquality();

  @override
  bool equals(HospitalsCreatedRecord? e1, HospitalsCreatedRecord? e2) {
    const listEquality = ListEquality();
    return e1?.shortName == e2?.shortName &&
        e1?.longName == e2?.longName &&
        e1?.centerCode == e2?.centerCode &&
        e1?.hospitalPassword == e2?.hospitalPassword &&
        e1?.firstConnections == e2?.firstConnections &&
        e1?.address == e2?.address &&
        e1?.email == e2?.email &&
        e1?.telNumber == e2?.telNumber &&
        e1?.hospitalVerified == e2?.hospitalVerified &&
        listEquality.equals(e1?.hospitalsUsers, e2?.hospitalsUsers) &&
        listEquality.equals(e1?.events, e2?.events) &&
        e1?.region == e2?.region &&
        e1?.updatedDate == e2?.updatedDate &&
        e1?.createdDate == e2?.createdDate &&
        e1?.isActive == e2?.isActive;
  }

  @override
  int hash(HospitalsCreatedRecord? e) => const ListEquality().hash([
        e?.shortName,
        e?.longName,
        e?.centerCode,
        e?.hospitalPassword,
        e?.firstConnections,
        e?.address,
        e?.email,
        e?.telNumber,
        e?.hospitalVerified,
        const ListEquality().hash(e?.hospitalsUsers),
        const ListEquality().hash(e?.events),
        e?.region,
        e?.updatedDate,
        e?.createdDate,
        e?.isActive
      ]);

  @override
  bool isValidKey(Object? o) => o is HospitalsCreatedRecord;
}
