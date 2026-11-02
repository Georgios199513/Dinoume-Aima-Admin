import '/components/only_desktop_alert/only_desktop_alert_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'only_desktop_model.dart';
export 'only_desktop_model.dart';

class OnlyDesktopWidget extends StatefulWidget {
  const OnlyDesktopWidget({super.key});

  static String routeName = 'onlyDesktop';
  static String routePath = 'onlyDesktop';

  @override
  State<OnlyDesktopWidget> createState() => _OnlyDesktopWidgetState();
}

class _OnlyDesktopWidgetState extends State<OnlyDesktopWidget> {
  late OnlyDesktopModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnlyDesktopModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: wrapWithModel(
              model: _model.onlyDesktopAlertModel,
              updateCallback: () => safeSetState(() {}),
              child: OnlyDesktopAlertWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
