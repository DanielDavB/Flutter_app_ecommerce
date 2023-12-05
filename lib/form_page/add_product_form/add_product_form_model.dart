import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'add_product_form_widget.dart' show AddProductFormWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddProductFormModel extends FlutterFlowModel<AddProductFormWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleController;
  String? Function(BuildContext, String?)? titleControllerValidator;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceController;
  String? Function(BuildContext, String?)? priceControllerValidator;
  // State field(s) for category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // State field(s) for desc widget.
  FocusNode? descFocusNode;
  TextEditingController? descController;
  String? Function(BuildContext, String?)? descControllerValidator;
  // State field(s) for ranking widget.
  String? rankingValue;
  FormFieldController<String>? rankingValueController;
  // State field(s) for cal widget.
  FocusNode? calFocusNode;
  TextEditingController? calController;
  String? Function(BuildContext, String?)? calControllerValidator;
  // State field(s) for add widget.
  FocusNode? addFocusNode;
  TextEditingController? addController;
  String? Function(BuildContext, String?)? addControllerValidator;
  // State field(s) for vit widget.
  FocusNode? vitFocusNode;
  TextEditingController? vitController;
  String? Function(BuildContext, String?)? vitControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];
  List<String> uploadedFileUrls2 = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    titleFocusNode?.dispose();
    titleController?.dispose();

    priceFocusNode?.dispose();
    priceController?.dispose();

    descFocusNode?.dispose();
    descController?.dispose();

    calFocusNode?.dispose();
    calController?.dispose();

    addFocusNode?.dispose();
    addController?.dispose();

    vitFocusNode?.dispose();
    vitController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
