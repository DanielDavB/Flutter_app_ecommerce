import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/products_page/carouselproduct/carouselproduct_widget.dart';
import '/products_page/product_desc/product_desc_widget.dart';
import '/products_page/product_stats/product_stats_widget.dart';
import '/products_page/product_view_actions/product_view_actions_widget.dart';
import 'product_widget.dart' show ProductWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductModel extends FlutterFlowModel<ProductWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for carouselproduct component.
  late CarouselproductModel carouselproductModel;
  // Model for productDesc component.
  late ProductDescModel productDescModel;
  // Model for productStats component.
  late ProductStatsModel productStatsModel;
  // Model for productViewActions component.
  late ProductViewActionsModel productViewActionsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    carouselproductModel = createModel(context, () => CarouselproductModel());
    productDescModel = createModel(context, () => ProductDescModel());
    productStatsModel = createModel(context, () => ProductStatsModel());
    productViewActionsModel =
        createModel(context, () => ProductViewActionsModel());
  }

  void dispose() {
    unfocusNode.dispose();
    carouselproductModel.dispose();
    productDescModel.dispose();
    productStatsModel.dispose();
    productViewActionsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
