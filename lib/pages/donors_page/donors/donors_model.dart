import '/backend/backend.dart';
import '/components/only_desktop_alert/only_desktop_alert_widget.dart';
import '/components/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'donors_widget.dart' show DonorsWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class DonorsModel extends FlutterFlowModel<DonorsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideBar component.
  late SideBarModel sideBarModel;
  // State field(s) for Name widget.
  final nameKey = GlobalKey();
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? nameSelectedOption;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for DonorsList widget.

  PagingController<DocumentSnapshot?, UsersRecord>? donorsListPagingController;
  Query? donorsListPagingQuery;
  List<StreamSubscription?> donorsListStreamSubscriptions = [];

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

    donorsListStreamSubscriptions.forEach((s) => s?.cancel());
    donorsListPagingController?.dispose();

    onlyDesktopAlertModel.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, UsersRecord> setDonorsListController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    donorsListPagingController ??= _createDonorsListController(query, parent);
    if (donorsListPagingQuery != query) {
      donorsListPagingQuery = query;
      donorsListPagingController?.refresh();
    }
    return donorsListPagingController!;
  }

  PagingController<DocumentSnapshot?, UsersRecord> _createDonorsListController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, UsersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryUsersRecordPage(
          queryBuilder: (_) => donorsListPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: donorsListStreamSubscriptions,
          controller: controller,
          pageSize: 2,
          isStream: true,
        ),
      );
  }
}
