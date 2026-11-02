import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  bool hasRegion() => _region != null;

  // "Newsletters" field.
  bool? _newsletters;
  bool get newsletters => _newsletters ?? false;
  bool hasNewsletters() => _newsletters != null;

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "isNyaUser" field.
  bool? _isNyaUser;
  bool get isNyaUser => _isNyaUser ?? false;
  bool hasIsNyaUser() => _isNyaUser != null;

  // "birthday" field.
  DateTime? _birthday;
  DateTime? get birthday => _birthday;
  bool hasBirthday() => _birthday != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "appointmentsList" field.
  List<DocumentReference>? _appointmentsList;
  List<DocumentReference> get appointmentsList => _appointmentsList ?? const [];
  bool hasAppointmentsList() => _appointmentsList != null;

  // "eventsPaticipated" field.
  List<DocumentReference>? _eventsPaticipated;
  List<DocumentReference> get eventsPaticipated =>
      _eventsPaticipated ?? const [];
  bool hasEventsPaticipated() => _eventsPaticipated != null;

  // "lastCurrentAppointment" field.
  DocumentReference? _lastCurrentAppointment;
  DocumentReference? get lastCurrentAppointment => _lastCurrentAppointment;
  bool hasLastCurrentAppointment() => _lastCurrentAppointment != null;

  // "justCompletedAppointment" field.
  bool? _justCompletedAppointment;
  bool get justCompletedAppointment => _justCompletedAppointment ?? false;
  bool hasJustCompletedAppointment() => _justCompletedAppointment != null;

  // "gender" field.
  DocumentReference? _gender;
  DocumentReference? get gender => _gender;
  bool hasGender() => _gender != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "NYAUserHospital" field.
  DocumentReference? _nYAUserHospital;
  DocumentReference? get nYAUserHospital => _nYAUserHospital;
  bool hasNYAUserHospital() => _nYAUserHospital != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _region = snapshotData['region'] as String?;
    _newsletters = snapshotData['Newsletters'] as bool?;
    _isAdmin = snapshotData['isAdmin'] as bool?;
    _isNyaUser = snapshotData['isNyaUser'] as bool?;
    _birthday = snapshotData['birthday'] as DateTime?;
    _isActive = snapshotData['isActive'] as bool?;
    _appointmentsList = getDataList(snapshotData['appointmentsList']);
    _eventsPaticipated = getDataList(snapshotData['eventsPaticipated']);
    _lastCurrentAppointment =
        snapshotData['lastCurrentAppointment'] as DocumentReference?;
    _justCompletedAppointment =
        snapshotData['justCompletedAppointment'] as bool?;
    _gender = snapshotData['gender'] as DocumentReference?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _nYAUserHospital = snapshotData['NYAUserHospital'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? region,
  bool? newsletters,
  bool? isAdmin,
  bool? isNyaUser,
  DateTime? birthday,
  bool? isActive,
  DocumentReference? lastCurrentAppointment,
  bool? justCompletedAppointment,
  DocumentReference? gender,
  String? photoUrl,
  DocumentReference? nYAUserHospital,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'region': region,
      'Newsletters': newsletters,
      'isAdmin': isAdmin,
      'isNyaUser': isNyaUser,
      'birthday': birthday,
      'isActive': isActive,
      'lastCurrentAppointment': lastCurrentAppointment,
      'justCompletedAppointment': justCompletedAppointment,
      'gender': gender,
      'photo_url': photoUrl,
      'NYAUserHospital': nYAUserHospital,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.region == e2?.region &&
        e1?.newsletters == e2?.newsletters &&
        e1?.isAdmin == e2?.isAdmin &&
        e1?.isNyaUser == e2?.isNyaUser &&
        e1?.birthday == e2?.birthday &&
        e1?.isActive == e2?.isActive &&
        listEquality.equals(e1?.appointmentsList, e2?.appointmentsList) &&
        listEquality.equals(e1?.eventsPaticipated, e2?.eventsPaticipated) &&
        e1?.lastCurrentAppointment == e2?.lastCurrentAppointment &&
        e1?.justCompletedAppointment == e2?.justCompletedAppointment &&
        e1?.gender == e2?.gender &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.nYAUserHospital == e2?.nYAUserHospital;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.region,
        e?.newsletters,
        e?.isAdmin,
        e?.isNyaUser,
        e?.birthday,
        e?.isActive,
        const ListEquality().hash(e?.appointmentsList),
        const ListEquality().hash(e?.eventsPaticipated),
        e?.lastCurrentAppointment,
        e?.justCompletedAppointment,
        e?.gender,
        e?.photoUrl,
        e?.nYAUserHospital
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
