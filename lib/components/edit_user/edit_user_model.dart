import '/flutter_flow/flutter_flow_util.dart';
import 'edit_user_widget.dart' show EditUserWidget;
import 'package:flutter/material.dart';

class EditUserModel extends FlutterFlowModel<EditUserWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DonorName widget.
  FocusNode? donorNameFocusNode;
  TextEditingController? donorNameTextController;
  String? Function(BuildContext, String?)? donorNameTextControllerValidator;
  // State field(s) for DonoEmail widget.
  FocusNode? donoEmailFocusNode;
  TextEditingController? donoEmailTextController;
  String? Function(BuildContext, String?)? donoEmailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    donorNameFocusNode?.dispose();
    donorNameTextController?.dispose();

    donoEmailFocusNode?.dispose();
    donoEmailTextController?.dispose();
  }
}
