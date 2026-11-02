import '/backend/api_requests/api_calls.dart';
import '/components/states_active_desactive/states_active_desactive_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'create_new_hospital_copy_widget.dart' show CreateNewHospitalCopyWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CreateNewHospitalCopyModel
    extends FlutterFlowModel<CreateNewHospitalCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for HospitalList widget.
  String? hospitalListValue;
  FormFieldController<String>? hospitalListValueController;
  // State field(s) for DonoEmail widget.
  FocusNode? donoEmailFocusNode;
  TextEditingController? donoEmailTextController;
  String? Function(BuildContext, String?)? donoEmailTextControllerValidator;
  // State field(s) for TempPass widget.
  late FocusNode tempPassPasswordVisibilityFocusNode;
  FocusNode? tempPassFocusNode;
  TextEditingController? tempPassTextController;
  late bool tempPassVisibility;
  String? Function(BuildContext, String?)? tempPassTextControllerValidator;
  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for Street widget.
  FocusNode? streetFocusNode;
  TextEditingController? streetTextController;
  String? Function(BuildContext, String?)? streetTextControllerValidator;
  // State field(s) for StreetNumber widget.
  FocusNode? streetNumberFocusNode;
  TextEditingController? streetNumberTextController;
  String? Function(BuildContext, String?)? streetNumberTextControllerValidator;
  // State field(s) for City widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for PostalCode widget.
  FocusNode? postalCodeFocusNode;
  TextEditingController? postalCodeTextController;
  late MaskTextInputFormatter postalCodeMask;
  String? Function(BuildContext, String?)? postalCodeTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Custom Action - checkEmailUnique] action in Create widget.
  bool? checkEmail;
  // Stores action output result for [Backend Call - API (Send Hospital Temporary Code)] action in Create widget.
  ApiCallResponse? sendEmailCenter;
  // Model for StatesActiveDesactive component.
  late StatesActiveDesactiveModel statesActiveDesactiveModel1;
  // Model for StatesActiveDesactive component.
  late StatesActiveDesactiveModel statesActiveDesactiveModel2;

  @override
  void initState(BuildContext context) {
    tempPassPasswordVisibilityFocusNode = FocusNode();
    tempPassVisibility = false;
    statesActiveDesactiveModel1 =
        createModel(context, () => StatesActiveDesactiveModel());
    statesActiveDesactiveModel2 =
        createModel(context, () => StatesActiveDesactiveModel());
  }

  @override
  void dispose() {
    donoEmailFocusNode?.dispose();
    donoEmailTextController?.dispose();

    tempPassFocusNode?.dispose();
    tempPassTextController?.dispose();
    tempPassPasswordVisibilityFocusNode.dispose();
    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    streetFocusNode?.dispose();
    streetTextController?.dispose();

    streetNumberFocusNode?.dispose();
    streetNumberTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    postalCodeFocusNode?.dispose();
    postalCodeTextController?.dispose();

    statesActiveDesactiveModel1.dispose();
    statesActiveDesactiveModel2.dispose();
  }
}
