import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_n_y_a_user_widget.dart' show CreateNYAUserWidget;
import 'package:flutter/material.dart';

class CreateNYAUserModel extends FlutterFlowModel<CreateNYAUserWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DonorName widget.
  FocusNode? donorNameFocusNode;
  TextEditingController? donorNameTextController;
  String? Function(BuildContext, String?)? donorNameTextControllerValidator;
  String? _donorNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Υποχρεωτικό πεδίο';
    }

    return null;
  }

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

  // State field(s) for Password widget.
  late FocusNode passwordPasswordVisibilityFocusNode;
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Υποχρεωτικό πεδίο';
    }

    return null;
  }

  // Stores action output result for [Custom Action - addAndEditUserNYAusers] action in SaveButton widget.
  String? signUpOutput;
  // Stores action output result for [Backend Call - API (Send Hospital Temporary Code)] action in SaveButton widget.
  ApiCallResponse? sendEmailCenterUser;

  @override
  void initState(BuildContext context) {
    donorNameTextControllerValidator = _donorNameTextControllerValidator;
    donoEmailTextControllerValidator = _donoEmailTextControllerValidator;
    passwordPasswordVisibilityFocusNode = FocusNode();
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
  }

  @override
  void dispose() {
    donorNameFocusNode?.dispose();
    donorNameTextController?.dispose();

    donoEmailFocusNode?.dispose();
    donoEmailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
    passwordPasswordVisibilityFocusNode.dispose();
  }
}
