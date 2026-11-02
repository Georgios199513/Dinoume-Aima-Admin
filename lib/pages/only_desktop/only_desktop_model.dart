import '/components/only_desktop_alert/only_desktop_alert_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'only_desktop_widget.dart' show OnlyDesktopWidget;
import 'package:flutter/material.dart';

class OnlyDesktopModel extends FlutterFlowModel<OnlyDesktopWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for onlyDesktopAlert component.
  late OnlyDesktopAlertModel onlyDesktopAlertModel;

  @override
  void initState(BuildContext context) {
    onlyDesktopAlertModel = createModel(context, () => OnlyDesktopAlertModel());
  }

  @override
  void dispose() {
    onlyDesktopAlertModel.dispose();
  }
}
