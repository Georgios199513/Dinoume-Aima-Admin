import '/components/only_desktop_alert/only_desktop_alert_widget.dart';
import '/components/side_bar/side_bar_widget.dart';
import '/components/tabs/tabs_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'events_page_d_o_n_e_widget.dart' show EventsPageDONEWidget;
import 'package:flutter/material.dart';

class EventsPageDONEModel extends FlutterFlowModel<EventsPageDONEWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideBar component.
  late SideBarModel sideBarModel;
  // Model for Tabs component.
  late TabsModel tabsModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for onlyDesktopAlert component.
  late OnlyDesktopAlertModel onlyDesktopAlertModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    tabsModel = createModel(context, () => TabsModel());
    onlyDesktopAlertModel = createModel(context, () => OnlyDesktopAlertModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    tabsModel.dispose();
    onlyDesktopAlertModel.dispose();
  }
}
