import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'states_button_model.dart';
export 'states_button_model.dart';

class StatesButtonWidget extends StatefulWidget {
  const StatesButtonWidget({
    super.key,
    this.width,
    this.heigth,
    this.hospitalRef,
  });

  final int? width;
  final int? heigth;
  final DocumentReference? hospitalRef;

  @override
  State<StatesButtonWidget> createState() => _StatesButtonWidgetState();
}

class _StatesButtonWidgetState extends State<StatesButtonWidget> {
  late StatesButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatesButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (FFAppState().isEmailSent == false)
          StreamBuilder<HospitalsCreatedRecord>(
            stream: HospitalsCreatedRecord.getDocument(widget.hospitalRef!),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                );
              }

              final buttonHospitalsCreatedRecord = snapshot.data!;

              return FFButtonWidget(
                onPressed: () async {
                  _model.apiResultm3x =
                      await SendHospitalTemporaryCodeCall.call(
                    to: buttonHospitalsCreatedRecord.email,
                    subject: 'Προσωρινός κωδικός σύνδεσης',
                    medium: 'email',
                    templateID: 'ry8hTLROeoS0u24NIubT',
                    bloodCenterName: buttonHospitalsCreatedRecord.shortName,
                    temporaryPassword:
                        buttonHospitalsCreatedRecord.hospitalPassword,
                  );

                  if ((_model.apiResultm3x?.succeeded ?? true) == true) {
                    FFAppState().isEmailSent = true;
                    FFAppState().update(() {});
                  }

                  safeSetState(() {});
                },
                text: 'Αποστολή κωδικού',
                icon: Icon(
                  Icons.send,
                  size: 15.0,
                ),
                options: FFButtonOptions(
                  width: 220.0,
                  height: 60.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                  color: FlutterFlowTheme.of(context).transparent,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        font: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              );
            },
          ),
        Material(
          color: Colors.transparent,
          elevation: 0.0,
          child: Container(
            width: widget.width?.toDouble(),
            height: widget.heigth?.toDouble(),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).transparent,
            ),
            child: Visibility(
              visible: FFAppState().isEmailSent == true,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.done,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 24.0,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Ο κωδικός στάλθηκε',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.roboto(
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
