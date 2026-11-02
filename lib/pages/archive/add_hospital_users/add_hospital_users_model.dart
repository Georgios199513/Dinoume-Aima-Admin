import '/components/states_active_desactive/states_active_desactive_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_hospital_users_widget.dart' show AddHospitalUsersWidget;
import 'package:flutter/material.dart';

class AddHospitalUsersModel extends FlutterFlowModel<AddHospitalUsersWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StatesActiveDesactive component.
  late StatesActiveDesactiveModel statesActiveDesactiveModel1;
  // Model for StatesActiveDesactive component.
  late StatesActiveDesactiveModel statesActiveDesactiveModel2;

  @override
  void initState(BuildContext context) {
    statesActiveDesactiveModel1 =
        createModel(context, () => StatesActiveDesactiveModel());
    statesActiveDesactiveModel2 =
        createModel(context, () => StatesActiveDesactiveModel());
  }

  @override
  void dispose() {
    statesActiveDesactiveModel1.dispose();
    statesActiveDesactiveModel2.dispose();
  }
}
