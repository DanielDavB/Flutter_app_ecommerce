import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/homepage/home_list_item/home_list_item_widget.dart';
import '/backend/schema/structs/index.dart';
import 'home_products_slider_widget.dart' show HomeProductsSliderWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeProductsSliderModel
    extends FlutterFlowModel<HomeProductsSliderWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for homeListItem dynamic component.
  late FlutterFlowDynamicModels<HomeListItemModel> homeListItemModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    homeListItemModels = FlutterFlowDynamicModels(() => HomeListItemModel());
  }

  void dispose() {
    homeListItemModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
