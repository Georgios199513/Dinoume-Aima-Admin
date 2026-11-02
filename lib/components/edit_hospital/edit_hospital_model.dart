import '/components/states_button/states_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_hospital_widget.dart' show EditHospitalWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditHospitalModel extends FlutterFlowModel<EditHospitalWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DonoEmail widget.
  FocusNode? donoEmailFocusNode;
  TextEditingController? donoEmailTextController;
  String? Function(BuildContext, String?)? donoEmailTextControllerValidator;
  // State field(s) for PasswordHospital widget.
  late FocusNode passwordHospitalPasswordVisibilityFocusNode;
  FocusNode? passwordHospitalFocusNode;
  TextEditingController? passwordHospitalTextController;
  late bool passwordHospitalVisibility;
  String? Function(BuildContext, String?)?
      passwordHospitalTextControllerValidator;
  // Model for StatesButton component.
  late StatesButtonModel statesButtonModel;
  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for Street widget.
  FocusNode? streetFocusNode;
  TextEditingController? streetTextController;
  String? Function(BuildContext, String?)? streetTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController6;
  late MaskTextInputFormatter textFieldMask2;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    passwordHospitalPasswordVisibilityFocusNode = FocusNode();
    passwordHospitalVisibility = false;
    statesButtonModel = createModel(context, () => StatesButtonModel());
  }

  @override
  void dispose() {
    donoEmailFocusNode?.dispose();
    donoEmailTextController?.dispose();

    passwordHospitalFocusNode?.dispose();
    passwordHospitalTextController?.dispose();
    passwordHospitalPasswordVisibilityFocusNode.dispose();
    statesButtonModel.dispose();
    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    streetFocusNode?.dispose();
    streetTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController5?.dispose();

    textFieldFocusNode2?.dispose();
    textController6?.dispose();
  }
}
