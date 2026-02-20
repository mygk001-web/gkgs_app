import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'exam_mode_quiz_model.dart';
export 'exam_mode_quiz_model.dart';

class ExamModeQuizWidget extends StatefulWidget {
  const ExamModeQuizWidget({super.key});

  static String routeName = 'ExamModeQuiz';
  static String routePath = '/examModeQuiz';

  @override
  State<ExamModeQuizWidget> createState() => _ExamModeQuizWidgetState();
}

class _ExamModeQuizWidgetState extends State<ExamModeQuizWidget> {
  late ExamModeQuizModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExamModeQuizModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<QuestionRow>>(
      future: QuestionTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'language_code',
              FFAppState().selectLanguage,
            )
            .eqOrNull(
              'subject',
              FFAppState().selectedSubject,
            )
            .eqOrNull(
              'sub_category',
              _model.dropDownValue,
            )
            .order('created_at'),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<QuestionRow> examModeQuizQuestionRowList = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: Color(0xFF3959EF),
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 70.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 40.0,
                ),
                onPressed: () async {
                  context.pushNamed(GKCategoryDropDownWidget.routeName);
                },
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  '8lum8myf' /* Exam Quiz */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: GoogleFonts.interTight(
                        fontWeight: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      fontWeight: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 6.0, 8.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 56.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          border: Border.all(
                            color: Color(0x4DEE8B60),
                            width: 2.0,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '3n14t34i' /* GK GS Target Sarkari By SBAS */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 6.0, 8.0, 6.0),
                      child: Container(
                        width: double.infinity,
                        height: 56.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(24.0),
                          border: Border.all(
                            color: Color(0x4DEE8B60),
                            width: 2.0,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    4.0, 0.0, 8.0, 0.0),
                                child: Container(
                                  width: 260.0,
                                  height: 66.8,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 6.0),
                                    child: FutureBuilder<List<QuestionRow>>(
                                      future: QuestionTable().queryRows(
                                        queryFn: (q) => q
                                            .eqOrNull(
                                              'category',
                                              FFAppState().selectedCategory,
                                            )
                                            .eqOrNull(
                                              'language_code',
                                              FFAppState().selectLanguage,
                                            ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<QuestionRow>
                                            dropDownQuestionRowList =
                                            snapshot.data!;

                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownValueController ??=
                                              FormFieldController<String>(null),
                                          options: dropDownQuestionRowList
                                              .map(
                                                  (e) => valueOrDefault<String>(
                                                        e.subCategory,
                                                        'Sub C',
                                                      ))
                                              .toList()
                                              .unique((e) => e),
                                          onChanged: (val) async {
                                            safeSetState(() =>
                                                _model.dropDownValue = val);
                                            FFAppState().SelectedSubCategory =
                                                _model.dropDownValue!;
                                            safeSetState(() {});
                                            FFAppState().currentQuestionIndex =
                                                0;
                                            safeSetState(() {});
                                          },
                                          width: 150.0,
                                          height: 0.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'jlxewy64' /* Select Sub Category */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: Color(0xFF2916D8),
                                            size: 35.0,
                                          ),
                                          fillColor: Color(0xB6249689),
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0.0,
                                          borderRadius: 8.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          isOverButton: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 10.0),
                      child: Container(
                        width: double.infinity,
                        height: 500.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          border: Border.all(
                            color: Color(0x4DEE8B60),
                            width: 2.0,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 6.0, 4.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(24.0),
                                  border: Border.all(
                                    color: Color(0x4DEE8B60),
                                    width: 2.0,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 3.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        if (_model.dropDownValue != null &&
                                            _model.dropDownValue != '')
                                          Text(
                                            '',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        if (_model.dropDownValue != null &&
                                            _model.dropDownValue != '')
                                          Text(
                                            '${(FFAppState().currentQuestionIndex + 1).toString()}  /  ${examModeQuizQuestionRowList.length.toString()}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 5.0, 4.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 120.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  border: Border.all(
                                    color: Color(0x4DEE8B60),
                                    width: 2.0,
                                  ),
                                ),
                                child: Visibility(
                                  visible: _model.dropDownValue != null &&
                                      _model.dropDownValue != '',
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        examModeQuizQuestionRowList
                                            .elementAtOrNull(FFAppState()
                                                .currentQuestionIndex)
                                            ?.questionText,
                                        'Question',
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 6.0, 4.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.selectedOption = 0;
                                  safeSetState(() {});
                                  _model.isAnswered = true;
                                  safeSetState(() {});
                                  if (examModeQuizQuestionRowList
                                          .elementAtOrNull(
                                              FFAppState().currentQuestionIndex)
                                          ?.optionA ==
                                      examModeQuizQuestionRowList
                                          .elementAtOrNull(
                                              FFAppState().currentQuestionIndex)
                                          ?.correctAnswer) {
                                    _model.correctCount =
                                        _model.correctCount + 1;
                                    safeSetState(() {});
                                  } else {
                                    _model.wrongCount = _model.wrongCount + 1;
                                    safeSetState(() {});
                                  }

                                  await Future.delayed(
                                    Duration(
                                      milliseconds: 1500,
                                    ),
                                  );
                                  FFAppState().currentQuestionIndex =
                                      FFAppState().currentQuestionIndex + 1;
                                  safeSetState(() {});
                                  _model.selectedOption = -1;
                                  _model.isAnswered = false;
                                  safeSetState(() {});
                                  if (FFAppState().currentQuestionIndex >=
                                      examModeQuizQuestionRowList.length) {
                                    context.pushNamed(
                                      ResultWidget.routeName,
                                      queryParameters: {
                                        'totalQuestions': serializeParam(
                                          examModeQuizQuestionRowList.length,
                                          ParamType.int,
                                        ),
                                        'correctCount': serializeParam(
                                          _model.correctCount,
                                          ParamType.int,
                                        ),
                                        'wrongCount': serializeParam(
                                          _model.wrongCount,
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 75.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(24.0),
                                    border: Border.all(
                                      color: () {
                                        if ((_model.isAnswered == true) &&
                                            (examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.correctAnswer ==
                                                examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.optionA)) {
                                          return Color(0xFF1BC36E);
                                        } else if ((_model.isAnswered ==
                                                true) &&
                                            (_model.selectedOption == 0) &&
                                            (examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.correctAnswer !=
                                                examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.optionA)) {
                                          return Color(0xFFE1212D);
                                        } else {
                                          return Color(0x4DEE8B60);
                                        }
                                      }(),
                                      width: 4.0,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 0.0, 4.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ux2a6hn5' /*   A.    */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                          if (_model.dropDownValue != null &&
                                              _model.dropDownValue != '')
                                            Text(
                                              valueOrDefault<String>(
                                                examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.optionA,
                                                'A',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 6.0, 4.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.selectedOption = 1;
                                  safeSetState(() {});
                                  _model.isAnswered = true;
                                  safeSetState(() {});
                                  if (examModeQuizQuestionRowList
                                          .elementAtOrNull(
                                              FFAppState().currentQuestionIndex)
                                          ?.optionB ==
                                      examModeQuizQuestionRowList
                                          .elementAtOrNull(
                                              FFAppState().currentQuestionIndex)
                                          ?.correctAnswer) {
                                    _model.correctCount =
                                        _model.correctCount + 1;
                                    safeSetState(() {});
                                  } else {
                                    _model.wrongCount = _model.wrongCount + 1;
                                    safeSetState(() {});
                                  }

                                  await Future.delayed(
                                    Duration(
                                      milliseconds: 1500,
                                    ),
                                  );
                                  FFAppState().currentQuestionIndex =
                                      FFAppState().currentQuestionIndex + 1;
                                  safeSetState(() {});
                                  _model.selectedOption = -1;
                                  _model.isAnswered = false;
                                  safeSetState(() {});
                                  if (FFAppState().currentQuestionIndex >=
                                      examModeQuizQuestionRowList.length) {
                                    context.pushNamed(
                                      ResultWidget.routeName,
                                      queryParameters: {
                                        'totalQuestions': serializeParam(
                                          examModeQuizQuestionRowList.length,
                                          ParamType.int,
                                        ),
                                        'correctCount': serializeParam(
                                          _model.correctCount,
                                          ParamType.int,
                                        ),
                                        'wrongCount': serializeParam(
                                          _model.wrongCount,
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 75.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(24.0),
                                    border: Border.all(
                                      color: () {
                                        if ((_model.isAnswered == true) &&
                                            (examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.correctAnswer ==
                                                examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.optionB)) {
                                          return Color(0xFF1BC36E);
                                        } else if ((_model.isAnswered ==
                                                true) &&
                                            (_model.selectedOption == 1) &&
                                            (examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.correctAnswer !=
                                                examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.optionB)) {
                                          return Color(0xFFE1212D);
                                        } else {
                                          return Color(0x4DEE8B60);
                                        }
                                      }(),
                                      width: 4.0,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 0.0, 4.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'tk5hcie0' /*   B.    */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                          if (_model.dropDownValue != null &&
                                              _model.dropDownValue != '')
                                            Text(
                                              valueOrDefault<String>(
                                                examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.optionB,
                                                'B',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 6.0, 4.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.selectedOption = 2;
                                  safeSetState(() {});
                                  _model.isAnswered = true;
                                  safeSetState(() {});
                                  if (examModeQuizQuestionRowList
                                          .elementAtOrNull(
                                              FFAppState().currentQuestionIndex)
                                          ?.optionC ==
                                      examModeQuizQuestionRowList
                                          .elementAtOrNull(
                                              FFAppState().currentQuestionIndex)
                                          ?.correctAnswer) {
                                    _model.correctCount =
                                        _model.correctCount + 1;
                                    safeSetState(() {});
                                  } else {
                                    _model.wrongCount = _model.wrongCount + 1;
                                    safeSetState(() {});
                                  }

                                  await Future.delayed(
                                    Duration(
                                      milliseconds: 1500,
                                    ),
                                  );
                                  FFAppState().currentQuestionIndex =
                                      FFAppState().currentQuestionIndex + 1;
                                  safeSetState(() {});
                                  _model.selectedOption = -1;
                                  _model.isAnswered = false;
                                  safeSetState(() {});
                                  if (FFAppState().currentQuestionIndex >=
                                      examModeQuizQuestionRowList.length) {
                                    context.pushNamed(
                                      ResultWidget.routeName,
                                      queryParameters: {
                                        'totalQuestions': serializeParam(
                                          examModeQuizQuestionRowList.length,
                                          ParamType.int,
                                        ),
                                        'correctCount': serializeParam(
                                          _model.correctCount,
                                          ParamType.int,
                                        ),
                                        'wrongCount': serializeParam(
                                          _model.wrongCount,
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 75.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(24.0),
                                    border: Border.all(
                                      color: () {
                                        if ((_model.isAnswered == true) &&
                                            (examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.correctAnswer ==
                                                examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.optionC)) {
                                          return Color(0xFF1BC36E);
                                        } else if ((_model.isAnswered ==
                                                true) &&
                                            (_model.selectedOption == 2) &&
                                            (examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.correctAnswer !=
                                                examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.optionC)) {
                                          return Color(0xFFE1212D);
                                        } else {
                                          return Color(0x4DEE8B60);
                                        }
                                      }(),
                                      width: 4.0,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 0.0, 4.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'huq5dlhk' /*   C.    */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                          if (_model.dropDownValue != null &&
                                              _model.dropDownValue != '')
                                            Text(
                                              valueOrDefault<String>(
                                                examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.optionC,
                                                'C',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 6.0, 4.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.selectedOption = 3;
                                  safeSetState(() {});
                                  _model.isAnswered = true;
                                  safeSetState(() {});
                                  if (examModeQuizQuestionRowList
                                          .elementAtOrNull(
                                              FFAppState().currentQuestionIndex)
                                          ?.optionD ==
                                      examModeQuizQuestionRowList
                                          .elementAtOrNull(
                                              FFAppState().currentQuestionIndex)
                                          ?.correctAnswer) {
                                    _model.correctCount =
                                        _model.correctCount + 1;
                                    safeSetState(() {});
                                  } else {
                                    _model.wrongCount = _model.wrongCount + 1;
                                    safeSetState(() {});
                                  }

                                  await Future.delayed(
                                    Duration(
                                      milliseconds: 1500,
                                    ),
                                  );
                                  FFAppState().currentQuestionIndex =
                                      FFAppState().currentQuestionIndex + 1;
                                  safeSetState(() {});
                                  _model.selectedOption = -1;
                                  _model.isAnswered = false;
                                  safeSetState(() {});
                                  if (FFAppState().currentQuestionIndex >=
                                      examModeQuizQuestionRowList.length) {
                                    context.pushNamed(
                                      ResultWidget.routeName,
                                      queryParameters: {
                                        'totalQuestions': serializeParam(
                                          examModeQuizQuestionRowList.length,
                                          ParamType.int,
                                        ),
                                        'correctCount': serializeParam(
                                          _model.correctCount,
                                          ParamType.int,
                                        ),
                                        'wrongCount': serializeParam(
                                          _model.wrongCount,
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 75.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(24.0),
                                    border: Border.all(
                                      color: () {
                                        if ((_model.isAnswered == true) &&
                                            (examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.correctAnswer ==
                                                examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.optionD)) {
                                          return Color(0xFF1BC36E);
                                        } else if ((_model.isAnswered ==
                                                true) &&
                                            (_model.selectedOption == 3) &&
                                            (examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.correctAnswer !=
                                                examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.optionD)) {
                                          return Color(0xFFE1212D);
                                        } else {
                                          return Color(0x4DEE8B60);
                                        }
                                      }(),
                                      width: 4.0,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 0.0, 4.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'mewqmvjh' /*   D.    */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                          if (_model.dropDownValue != null &&
                                              _model.dropDownValue != '')
                                            Text(
                                              valueOrDefault<String>(
                                                examModeQuizQuestionRowList
                                                    .elementAtOrNull(FFAppState()
                                                        .currentQuestionIndex)
                                                    ?.optionD,
                                                'D',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 8.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 50.0,
                              fillColor: Color(0xFFF27722),
                              icon: Icon(
                                Icons.pause_circle_outline,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                _model.timerController.onStopTimer();
                                _model.isTimerRunning = false;
                                safeSetState(() {});
                              },
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 140.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: FlutterFlowTimer(
                                  initialTime: _model.timerInitialTimeMs,
                                  getDisplayTime: (value) =>
                                      StopWatchTimer.getDisplayTime(value,
                                          milliSecond: false),
                                  controller: _model.timerController,
                                  updateStateInterval:
                                      Duration(milliseconds: 1000),
                                  onChanged:
                                      (value, displayTime, shouldUpdate) {
                                    _model.timerMilliseconds = value;
                                    _model.timerValue = displayTime;
                                    if (shouldUpdate) safeSetState(() {});
                                  },
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 50.0,
                            fillColor: Color(0xE4086219),
                            icon: Icon(
                              Icons.play_circle,
                              color: FlutterFlowTheme.of(context).info,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              _model.isTimerRunning = true;
                              safeSetState(() {});
                              _model.timerController.onStartTimer();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
