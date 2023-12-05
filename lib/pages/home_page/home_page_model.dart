import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/homepage/category_item_fruit/category_item_fruit_widget.dart';
import '/homepage/category_item_nuts/category_item_nuts_widget.dart';
import '/homepage/home_products_slider/home_products_slider_widget.dart';
import '/homepage/selected_product/selected_product_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for categoryItemFruit component.
  late CategoryItemFruitModel categoryItemFruitModel;
  // Model for categoryItemNuts component.
  late CategoryItemNutsModel categoryItemNutsModel;
  // Model for selectedProduct component.
  late SelectedProductModel selectedProductModel;
  // Model for homeProductsSlider component.
  late HomeProductsSliderModel homeProductsSliderModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    categoryItemFruitModel =
        createModel(context, () => CategoryItemFruitModel());
    categoryItemNutsModel = createModel(context, () => CategoryItemNutsModel());
    selectedProductModel = createModel(context, () => SelectedProductModel());
    homeProductsSliderModel =
        createModel(context, () => HomeProductsSliderModel());
  }

  void dispose() {
    unfocusNode.dispose();
    categoryItemFruitModel.dispose();
    categoryItemNutsModel.dispose();
    selectedProductModel.dispose();
    homeProductsSliderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
