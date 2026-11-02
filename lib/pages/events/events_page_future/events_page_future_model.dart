import '/components/new_old_events_widget.dart';
import '/components/only_desktop_alert/only_desktop_alert_widget.dart';
import '/components/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'events_page_future_widget.dart' show EventsPageFutureWidget;
import 'package:flutter/material.dart';

class EventsPageFutureModel extends FlutterFlowModel<EventsPageFutureWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in EventsPageFuture widget.
  int? indexInitialEvents;
  // Model for sideBar component.
  late SideBarModel sideBarModel;
  // Model for newOldEvents component.
  late NewOldEventsModel newOldEventsModel;
  // State field(s) for NewDropDows widget.
  String? newDropDowsValue;
  FormFieldController<String>? newDropDowsValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in NewDropDows widget.
  int? indexNewEvents;
  // State field(s) for OldDropDown widget.
  String? oldDropDownValue;
  FormFieldController<String>? oldDropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in OldDropDown widget.
  int? oldEventsNumber;
  // Model for onlyDesktopAlert component.
  late OnlyDesktopAlertModel onlyDesktopAlertModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    newOldEventsModel = createModel(context, () => NewOldEventsModel());
    onlyDesktopAlertModel = createModel(context, () => OnlyDesktopAlertModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    newOldEventsModel.dispose();
    onlyDesktopAlertModel.dispose();
  }
}
