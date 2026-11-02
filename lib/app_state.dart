import 'package:flutter/material.dart'
    show ChangeNotifier, Color, Colors, VoidCallback;
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _ChooseGender = 'Δεν θέλω να δηλώσω';
  String get ChooseGender => _ChooseGender;
  set ChooseGender(String value) {
    _ChooseGender = value;
  }

  bool _EmailExists = false;
  bool get EmailExists => _EmailExists;
  set EmailExists(bool value) {
    _EmailExists = value;
  }

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool value) {
    _searchActive = value;
  }

  DateTime? _defaultFromDate =
      DateTime.fromMillisecondsSinceEpoch(1669907460000);
  DateTime? get defaultFromDate => _defaultFromDate;
  set defaultFromDate(DateTime? value) {
    _defaultFromDate = value;
  }

  bool _EventListState = true;
  bool get EventListState => _EventListState;
  set EventListState(bool value) {
    _EventListState = value;
  }

  String _HospitalSelected = '';
  String get HospitalSelected => _HospitalSelected;
  set HospitalSelected(String value) {
    _HospitalSelected = value;
  }

  bool _NewHospitalSelectRegionError = false;
  bool get NewHospitalSelectRegionError => _NewHospitalSelectRegionError;
  set NewHospitalSelectRegionError(bool value) {
    _NewHospitalSelectRegionError = value;
  }

  String _NewHospitalShortName = '';
  String get NewHospitalShortName => _NewHospitalShortName;
  set NewHospitalShortName(String value) {
    _NewHospitalShortName = value;
  }

  bool _isEmailSent = false;
  bool get isEmailSent => _isEmailSent;
  set isEmailSent(bool value) {
    _isEmailSent = value;
  }

  DocumentReference? _SelectedHospitalRef;
  DocumentReference? get SelectedHospitalRef => _SelectedHospitalRef;
  set SelectedHospitalRef(DocumentReference? value) {
    _SelectedHospitalRef = value;
  }

  int _selectedIndex = -1;
  int get selectedIndex => _selectedIndex;
  set selectedIndex(int value) {
    _selectedIndex = value;
  }

  bool _isFilter = false;
  bool get isFilter => _isFilter;
  set isFilter(bool value) {
    _isFilter = value;
  }

  String _indexEventList = '0';
  String get indexEventList => _indexEventList;
  set indexEventList(String value) {
    _indexEventList = value;
  }

  int _numberOfEvents = 0;
  int get numberOfEvents => _numberOfEvents;
  set numberOfEvents(int value) {
    _numberOfEvents = value;
  }
}
