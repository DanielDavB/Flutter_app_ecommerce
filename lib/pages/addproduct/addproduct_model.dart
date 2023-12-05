import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/form_page/add_product_form/add_product_form_widget.dart';
import 'addproduct_widget.dart' show AddproductWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddproductModel extends FlutterFlowModel<AddproductWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for addProductForm component.
  late AddProductFormModel addProductFormModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    addProductFormModel = createModel(context, () => AddProductFormModel());
  }

  void dispose() {
    unfocusNode.dispose();
    addProductFormModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
