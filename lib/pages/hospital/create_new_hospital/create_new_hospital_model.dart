import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/only_desktop_alert/only_desktop_alert_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'create_new_hospital_widget.dart' show CreateNewHospitalWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CreateNewHospitalModel extends FlutterFlowModel<CreateNewHospitalWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for scrollingColumn widget.
  ScrollController? scrollingColumnScrollController;
  // State field(s) for NewHspial widget.
  ScrollController? newHspialScrollController;
  // State field(s) for HospitalList widget.
  String? hospitalListValue;
  FormFieldController<String>? hospitalListValueController;
  // State field(s) for DonoEmail widget.
  FocusNode? donoEmailFocusNode;
  TextEditingController? donoEmailTextController;
  String? Function(BuildContext, String?)? donoEmailTextControllerValidator;
  String? _donoEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Υποχρεωτικό πεδίο';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for TempPass widget.
  FocusNode? tempPassFocusNode;
  TextEditingController? tempPassTextController;
  String? Function(BuildContext, String?)? tempPassTextControllerValidator;
  String? _tempPassTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Υποχρεωτικό πεδίο';
    }

    return null;
  }

  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  String? _phoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Υποχρεωτικό πεδίο';
    }

    return null;
  }

  // State field(s) for StreetAndNumber widget.
  FocusNode? streetAndNumberFocusNode;
  TextEditingController? streetAndNumberTextController;
  String? Function(BuildContext, String?)?
      streetAndNumberTextControllerValidator;
  String? _streetAndNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Υποχρεωτικό πεδίο';
    }

    return null;
  }

  // State field(s) for City widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  String? _cityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Υποχρεωτικό πεδίο';
    }

    return null;
  }

  // State field(s) for PostalCode widget.
  FocusNode? postalCodeFocusNode;
  TextEditingController? postalCodeTextController;
  late MaskTextInputFormatter postalCodeMask;
  String? Function(BuildContext, String?)? postalCodeTextControllerValidator;
  String? _postalCodeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Υποχρεωτικό πεδίο';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Custom Action - checkEmailUnique] action in Create widget.
  bool? checkEmail;
  // Stores action output result for [Backend Call - Create Document] action in Create widget.
  HospitalsCreatedRecord? createNewHospital;
  // Stores action output result for [Backend Call - API (Send Hospital Account Confirmation)] action in Create widget.
  ApiCallResponse? sendEmailCenter;
  // Model for onlyDesktopAlert component.
  late OnlyDesktopAlertModel onlyDesktopAlertModel;

  @override
  void initState(BuildContext context) {
    columnController1 = ScrollController();
    columnController2 = ScrollController();
    scrollingColumnScrollController = ScrollController();
    newHspialScrollController = ScrollController();
    donoEmailTextControllerValidator = _donoEmailTextControllerValidator;
    tempPassTextControllerValidator = _tempPassTextControllerValidator;
    phoneTextControllerValidator = _phoneTextControllerValidator;
    streetAndNumberTextControllerValidator =
        _streetAndNumberTextControllerValidator;
    cityTextControllerValidator = _cityTextControllerValidator;
    postalCodeTextControllerValidator = _postalCodeTextControllerValidator;
    onlyDesktopAlertModel = createModel(context, () => OnlyDesktopAlertModel());
  }

  @override
  void dispose() {
    columnController1?.dispose();
    columnController2?.dispose();
    scrollingColumnScrollController?.dispose();
    newHspialScrollController?.dispose();
    donoEmailFocusNode?.dispose();
    donoEmailTextController?.dispose();

    tempPassFocusNode?.dispose();
    tempPassTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    streetAndNumberFocusNode?.dispose();
    streetAndNumberTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    postalCodeFocusNode?.dispose();
    postalCodeTextController?.dispose();

    onlyDesktopAlertModel.dispose();
  }
}
