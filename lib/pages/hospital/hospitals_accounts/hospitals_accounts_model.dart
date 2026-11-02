import '/components/only_desktop_alert/only_desktop_alert_widget.dart';
import '/components/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'hospitals_accounts_widget.dart' show HospitalsAccountsWidget;
import 'package:flutter/material.dart';

class HospitalsAccountsModel extends FlutterFlowModel<HospitalsAccountsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideBar component.
  late SideBarModel sideBarModel;
  // State field(s) for Name widget.
  final nameKey = GlobalKey();
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? nameSelectedOption;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // Model for onlyDesktopAlert component.
  late OnlyDesktopAlertModel onlyDesktopAlertModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    onlyDesktopAlertModel = createModel(context, () => OnlyDesktopAlertModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    nameFocusNode?.dispose();

    onlyDesktopAlertModel.dispose();
  }
}
