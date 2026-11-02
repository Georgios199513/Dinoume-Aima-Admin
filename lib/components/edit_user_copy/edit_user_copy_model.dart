import '/backend/api_requests/api_calls.dart';
import '/components/states_button/states_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_user_copy_widget.dart' show EditUserCopyWidget;
import 'package:flutter/material.dart';

class EditUserCopyModel extends FlutterFlowModel<EditUserCopyWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DonorName widget.
  FocusNode? donorNameFocusNode1;
  TextEditingController? donorNameTextController1;
  String? Function(BuildContext, String?)? donorNameTextController1Validator;
  // State field(s) for DonoEmail widget.
  FocusNode? donoEmailFocusNode;
  TextEditingController? donoEmailTextController;
  String? Function(BuildContext, String?)? donoEmailTextControllerValidator;
  // State field(s) for Password widget.
  late FocusNode passwordPasswordVisibilityFocusNode;
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for DonorName widget.
  late FocusNode donorNamePasswordVisibilityFocusNode2;
  FocusNode? donorNameFocusNode2;
  TextEditingController? donorNameTextController2;
  late bool donorNameVisibility;
  String? Function(BuildContext, String?)? donorNameTextController2Validator;
  // Model for StatesButton component.
  late StatesButtonModel statesButtonModel;
  // Stores action output result for [Backend Call - API (Send Hospital Temporary Code)] action in StatesButton widget.
  ApiCallResponse? apiResultm3x;

  @override
  void initState(BuildContext context) {
    passwordPasswordVisibilityFocusNode = FocusNode();
    passwordVisibility = false;
    donorNamePasswordVisibilityFocusNode2 = FocusNode();
    donorNameVisibility = false;
    statesButtonModel = createModel(context, () => StatesButtonModel());
  }

  @override
  void dispose() {
    donorNameFocusNode1?.dispose();
    donorNameTextController1?.dispose();

    donoEmailFocusNode?.dispose();
    donoEmailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
    passwordPasswordVisibilityFocusNode.dispose();
    donorNameFocusNode2?.dispose();
    donorNameTextController2?.dispose();
    donorNamePasswordVisibilityFocusNode2.dispose();
    statesButtonModel.dispose();
  }
}
