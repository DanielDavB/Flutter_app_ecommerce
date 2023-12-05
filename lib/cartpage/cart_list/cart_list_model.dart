import '/backend/schema/structs/index.dart';
import '/cartpage/cart_item/cart_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_list_widget.dart' show CartListWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartListModel extends FlutterFlowModel<CartListWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for cartItem dynamic component.
  late FlutterFlowDynamicModels<CartItemModel> cartItemModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    cartItemModels = FlutterFlowDynamicModels(() => CartItemModel());
  }

  void dispose() {
    cartItemModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
