import '/components/only_desktop_alert/only_desktop_alert_widget.dart';
import '/components/states_button/states_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'hospital_details_widget.dart' show HospitalDetailsWidget;
import 'package:flutter/material.dart';

class HospitalDetailsModel extends FlutterFlowModel<HospitalDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PasswordHospital widget.
  late FocusNode passwordHospitalPasswordVisibilityFocusNode;
  FocusNode? passwordHospitalFocusNode;
  TextEditingController? passwordHospitalTextController;
  late bool passwordHospitalVisibility;
  String? Function(BuildContext, String?)?
      passwordHospitalTextControllerValidator;
  // Model for StatesButton component.
  late StatesButtonModel statesButtonModel;
  // Model for onlyDesktopAlert component.
  late OnlyDesktopAlertModel onlyDesktopAlertModel;

  @override
  void initState(BuildContext context) {
    passwordHospitalPasswordVisibilityFocusNode = FocusNode();
    passwordHospitalVisibility = false;
    statesButtonModel = createModel(context, () => StatesButtonModel());
    onlyDesktopAlertModel = createModel(context, () => OnlyDesktopAlertModel());
  }

  @override
  void dispose() {
    passwordHospitalFocusNode?.dispose();
    passwordHospitalTextController?.dispose();
    passwordHospitalPasswordVisibilityFocusNode.dispose();
    statesButtonModel.dispose();
    onlyDesktopAlertModel.dispose();
  }
}
