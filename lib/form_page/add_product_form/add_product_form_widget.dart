import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_product_form_model.dart';
export 'add_product_form_model.dart';

class AddProductFormWidget extends StatefulWidget {
  const AddProductFormWidget({Key? key}) : super(key: key);

  @override
  _AddProductFormWidgetState createState() => _AddProductFormWidgetState();
}

class _AddProductFormWidgetState extends State<AddProductFormWidget> {
  late AddProductFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddProductFormModel());

    _model.titleController ??= TextEditingController();
    _model.titleFocusNode ??= FocusNode();

    _model.priceController ??= TextEditingController();
    _model.priceFocusNode ??= FocusNode();

    _model.descController ??= TextEditingController();
    _model.descFocusNode ??= FocusNode();

    _model.calController ??= TextEditingController();
    _model.calFocusNode ??= FocusNode();

    _model.addController ??= TextEditingController();
    _model.addFocusNode ??= FocusNode();

    _model.vitController ??= TextEditingController();
    _model.vitFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Form(
      key: _model.formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TextFormField(
              controller: _model.titleController,
              focusNode: _model.titleFocusNode,
              autofocus: true,
              textInputAction: TextInputAction.next,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF606A85),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF606A85),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFE5E7EB),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF9958),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF5963),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF5963),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    color: Color(0xFF15161E),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
              cursorColor: Color(0xFFFF9958),
              validator: _model.titleControllerValidator.asValidator(context),
            ),
            TextFormField(
              controller: _model.priceController,
              focusNode: _model.priceFocusNode,
              autofocus: true,
              textInputAction: TextInputAction.next,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Price',
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF606A85),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF606A85),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFE5E7EB),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF9958),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF5963),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF5963),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    color: Color(0xFF15161E),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              cursorColor: Color(0xFFFF9958),
              validator: _model.priceControllerValidator.asValidator(context),
            ),
            FlutterFlowDropDown<String>(
              controller: _model.categoryValueController ??=
                  FormFieldController<String>(null),
              options: ['Dried fruit', 'Nuts'],
              onChanged: (val) => setState(() => _model.categoryValue = val),
              width: double.infinity,
              height: 50.0,
              textStyle: FlutterFlowTheme.of(context).labelMedium,
              hintText: 'Category',
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).info,
              elevation: 2.0,
              borderColor: Color(0xFFE5E7EB),
              borderWidth: 2.0,
              borderRadius: 8.0,
              margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
              hidesUnderline: true,
              isSearchable: false,
              isMultiSelect: false,
            ),
            TextFormField(
              controller: _model.descController,
              focusNode: _model.descFocusNode,
              autofocus: true,
              textInputAction: TextInputAction.next,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Description',
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF606A85),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF606A85),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFE5E7EB),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF9958),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF5963),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF5963),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    color: Color(0xFF15161E),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
              cursorColor: Color(0xFFFF9958),
              validator: _model.descControllerValidator.asValidator(context),
            ),
            FlutterFlowDropDown<String>(
              controller: _model.rankingValueController ??=
                  FormFieldController<String>(null),
              options: ['1', '2', '3', '4', '5'],
              onChanged: (val) => setState(() => _model.rankingValue = val),
              width: double.infinity,
              height: 50.0,
              textStyle: FlutterFlowTheme.of(context).labelMedium,
              hintText: 'Ranking',
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).info,
              elevation: 2.0,
              borderColor: Color(0xFFE5E7EB),
              borderWidth: 2.0,
              borderRadius: 8.0,
              margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
              hidesUnderline: true,
              isSearchable: false,
              isMultiSelect: false,
            ),
            TextFormField(
              controller: _model.calController,
              focusNode: _model.calFocusNode,
              autofocus: true,
              textInputAction: TextInputAction.next,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Calories',
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF606A85),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF606A85),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFE5E7EB),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF9958),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF5963),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF5963),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    color: Color(0xFF15161E),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
              keyboardType: TextInputType.number,
              cursorColor: Color(0xFFFF9958),
              validator: _model.calControllerValidator.asValidator(context),
            ),
            TextFormField(
              controller: _model.addController,
              focusNode: _model.addFocusNode,
              autofocus: true,
              textInputAction: TextInputAction.next,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Additives',
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF606A85),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF606A85),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFE5E7EB),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF9958),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF5963),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF5963),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    color: Color(0xFF15161E),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
              keyboardType: TextInputType.number,
              cursorColor: Color(0xFFFF9958),
              validator: _model.addControllerValidator.asValidator(context),
            ),
            TextFormField(
              controller: _model.vitController,
              focusNode: _model.vitFocusNode,
              autofocus: true,
              textInputAction: TextInputAction.next,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Vitamins',
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF606A85),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF606A85),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFE5E7EB),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF9958),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF5963),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF5963),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    color: Color(0xFF15161E),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
              keyboardType: TextInputType.number,
              cursorColor: Color(0xFFFF9958),
              validator: _model.vitControllerValidator.asValidator(context),
            ),
            FFButtonWidget(
              onPressed: () async {
                final selectedMedia = await selectMediaWithSourceBottomSheet(
                  context: context,
                  storageFolderPath: 'img',
                  maxWidth: 500.00,
                  maxHeight: 500.00,
                  allowPhoto: true,
                );
                if (selectedMedia != null &&
                    selectedMedia.every(
                        (m) => validateFileFormat(m.storagePath, context))) {
                  setState(() => _model.isDataUploading1 = true);
                  var selectedUploadedFiles = <FFUploadedFile>[];

                  var downloadUrls = <String>[];
                  try {
                    showUploadMessage(
                      context,
                      'Uploading file...',
                      showLoading: true,
                    );
                    selectedUploadedFiles = selectedMedia
                        .map((m) => FFUploadedFile(
                              name: m.storagePath.split('/').last,
                              bytes: m.bytes,
                              height: m.dimensions?.height,
                              width: m.dimensions?.width,
                              blurHash: m.blurHash,
                            ))
                        .toList();

                    downloadUrls = await uploadSupabaseStorageFiles(
                      bucketName: 'productscart',
                      selectedFiles: selectedMedia,
                    );
                  } finally {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    _model.isDataUploading1 = false;
                  }
                  if (selectedUploadedFiles.length == selectedMedia.length &&
                      downloadUrls.length == selectedMedia.length) {
                    setState(() {
                      _model.uploadedLocalFile1 = selectedUploadedFiles.first;
                      _model.uploadedFileUrl1 = downloadUrls.first;
                    });
                    showUploadMessage(context, 'Success!');
                  } else {
                    setState(() {});
                    showUploadMessage(context, 'Failed to upload data');
                    return;
                  }
                }

                setState(() {
                  FFAppState().updateNewProductStruct(
                    (e) => e..img = _model.uploadedFileUrl1,
                  );
                });
              },
              text: 'Add cover',
              options: FFButtonOptions(
                width: double.infinity,
                height: 48.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Color(0xFFD99F50),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: FlutterFlowTheme.of(context).info,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                elevation: 0.0,
                borderSide: BorderSide(
                  color: Color(0xFFD99F50),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(0.0),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                final selectedMedia = await selectMedia(
                  storageFolderPath: 'img',
                  maxWidth: 500.00,
                  maxHeight: 500.00,
                  mediaSource: MediaSource.photoGallery,
                  multiImage: true,
                );
                if (selectedMedia != null &&
                    selectedMedia.every(
                        (m) => validateFileFormat(m.storagePath, context))) {
                  setState(() => _model.isDataUploading2 = true);
                  var selectedUploadedFiles = <FFUploadedFile>[];

                  var downloadUrls = <String>[];
                  try {
                    showUploadMessage(
                      context,
                      'Uploading file...',
                      showLoading: true,
                    );
                    selectedUploadedFiles = selectedMedia
                        .map((m) => FFUploadedFile(
                              name: m.storagePath.split('/').last,
                              bytes: m.bytes,
                              height: m.dimensions?.height,
                              width: m.dimensions?.width,
                              blurHash: m.blurHash,
                            ))
                        .toList();

                    downloadUrls = await uploadSupabaseStorageFiles(
                      bucketName: 'productscart',
                      selectedFiles: selectedMedia,
                    );
                  } finally {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    _model.isDataUploading2 = false;
                  }
                  if (selectedUploadedFiles.length == selectedMedia.length &&
                      downloadUrls.length == selectedMedia.length) {
                    setState(() {
                      _model.uploadedLocalFiles2 = selectedUploadedFiles;
                      _model.uploadedFileUrls2 = downloadUrls;
                    });
                    showUploadMessage(context, 'Success!');
                  } else {
                    setState(() {});
                    showUploadMessage(context, 'Failed to upload data');
                    return;
                  }
                }

                setState(() {
                  FFAppState().updateNewProductStruct(
                    (e) => e..images = _model.uploadedFileUrls2.toList(),
                  );
                });
              },
              text: 'Add images',
              options: FFButtonOptions(
                width: double.infinity,
                height: 48.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Color(0xFFD99F50),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: FlutterFlowTheme.of(context).info,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                elevation: 0.0,
                borderSide: BorderSide(
                  color: Color(0xFFD99F50),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(0.0),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                setState(() {
                  FFAppState().updateNewProductStruct(
                    (e) => e..title = _model.titleController.text,
                  );
                });
                setState(() {
                  FFAppState().updateNewProductStruct(
                    (e) =>
                        e..price = double.tryParse(_model.priceController.text),
                  );
                });
                setState(() {
                  FFAppState().updateNewProductStruct(
                    (e) => e..category = _model.categoryValue,
                  );
                });
                setState(() {
                  FFAppState().updateNewProductStruct(
                    (e) => e..desc = _model.descController.text,
                  );
                });
                setState(() {
                  FFAppState().updateNewProductStruct(
                    (e) => e
                      ..ranking = valueOrDefault<int>(
                        functions.strToInt(_model.rankingValue!),
                        1,
                      ),
                  );
                });
                setState(() {
                  FFAppState().updateNewProductStruct(
                    (e) => e..cal = int.tryParse(_model.calController.text),
                  );
                });
                setState(() {
                  FFAppState().updateNewProductStruct(
                    (e) => e..add = int.tryParse(_model.addController.text),
                  );
                });
                setState(() {
                  FFAppState().updateNewProductStruct(
                    (e) => e..vit = int.tryParse(_model.vitController.text),
                  );
                });
                setState(() {
                  FFAppState().updateNewProductStruct(
                    (e) => e
                      ..quantity = valueOrDefault<int>(
                        functions.getQuantity(),
                        1,
                      ),
                  );
                });
                setState(() {
                  FFAppState().addToProductsList(FFAppState().newProduct);
                });
                setState(() {
                  FFAppState().newProduct = ProductStruct();
                });

                context.pushNamed(
                  'HomePage',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 200),
                    ),
                  },
                );
              },
              text: 'Add Product',
              options: FFButtonOptions(
                width: double.infinity,
                height: 48.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Color(0xFFD99F50),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                elevation: 0.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 0.0,
                ),
                borderRadius: BorderRadius.circular(0.0),
              ),
            ),
          ].divide(SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
