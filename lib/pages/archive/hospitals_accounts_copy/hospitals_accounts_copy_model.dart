import '/components/action_window/action_window_widget.dart';
import '/components/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'hospitals_accounts_copy_widget.dart' show HospitalsAccountsCopyWidget;
import 'package:flutter/material.dart';

class HospitalsAccountsCopyModel
    extends FlutterFlowModel<HospitalsAccountsCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideBar component.
  late SideBarModel sideBarModel;
  // State field(s) for Name widget.
  final nameKey = GlobalKey();
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? nameSelectedOption;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // Model for ActionWindow component.
  late ActionWindowModel actionWindowModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    actionWindowModel = createModel(context, () => ActionWindowModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    nameFocusNode?.dispose();

    actionWindowModel.dispose();
  }
}
