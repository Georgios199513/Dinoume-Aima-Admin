import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'new_old_events_model.dart';
export 'new_old_events_model.dart';

class NewOldEventsWidget extends StatefulWidget {
  const NewOldEventsWidget({super.key});

  @override
  State<NewOldEventsWidget> createState() => _NewOldEventsWidgetState();
}

class _NewOldEventsWidgetState extends State<NewOldEventsWidget> {
  late NewOldEventsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewOldEventsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 0.0,
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).transparent,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  _model.index = 0;
                  _model.updatePage(() {});
                  _model.index0Events = await queryEventsRecordCount(
                    queryBuilder: (eventsRecord) => eventsRecord
                        .where(
                          'EventDate',
                          isGreaterThanOrEqualTo: functions.getTodayDate(),
                        )
                        .where(
                          'eventState',
                          isEqualTo: 'active',
                        ),
                  );
                  FFAppState().indexEventList = '0';
                  FFAppState().numberOfEvents = _model.index0Events!;
                  _model.updatePage(() {});

                  safeSetState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: _model.index == 0
                        ? FlutterFlowTheme.of(context).primary
                        : Color(0xFFF9F9FA),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      bottomLeft: Radius.circular(16.0),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Ενεργές εξορμήσεις',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.roboto(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: _model.index == 0
                                  ? FlutterFlowTheme.of(context).primaryBtnText
                                  : FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  _model.index = 1;
                  safeSetState(() {});
                  _model.index1Events = await queryEventsRecordCount(
                    queryBuilder: (eventsRecord) => eventsRecord.where(
                      'EventDate',
                      isLessThan: functions.getTodayDate(),
                    ),
                  );
                  FFAppState().indexEventList = '1';
                  FFAppState().numberOfEvents = _model.index1Events!;
                  _model.updatePage(() {});

                  safeSetState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: _model.index == 1
                        ? FlutterFlowTheme.of(context).primary
                        : Color(0xFFF9F9FA),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Αρχείο',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: _model.index == 1
                                      ? FlutterFlowTheme.of(context)
                                          .primaryBtnText
                                      : FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
