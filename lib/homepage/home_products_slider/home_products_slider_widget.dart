import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/homepage/home_list_item/home_list_item_widget.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_products_slider_model.dart';
export 'home_products_slider_model.dart';

class HomeProductsSliderWidget extends StatefulWidget {
  const HomeProductsSliderWidget({Key? key}) : super(key: key);

  @override
  _HomeProductsSliderWidgetState createState() =>
      _HomeProductsSliderWidgetState();
}

class _HomeProductsSliderWidgetState extends State<HomeProductsSliderWidget> {
  late HomeProductsSliderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeProductsSliderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).info,
      ),
      child: Builder(
        builder: (context) {
          final productsList = FFAppState()
              .productsList
              .where((e) => e.category == FFAppState().categorySelected)
              .toList()
              .map((e) => e)
              .toList();
          return ListView.separated(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount: productsList.length,
            separatorBuilder: (_, __) => SizedBox(width: 10.0),
            itemBuilder: (context, productsListIndex) {
              final productsListItem = productsList[productsListIndex];
              return Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: wrapWithModel(
                  model: _model.homeListItemModels.getModel(
                    productsListItem.id.toString(),
                    productsListIndex,
                  ),
                  updateCallback: () => setState(() {}),
                  child: HomeListItemWidget(
                    key: Key(
                      'Keyhs6_${productsListItem.id.toString()}',
                    ),
                    imgLink: productsListItem.img,
                    id: productsListItem.id,
                    product: ProductStruct.fromMap(productsListItem.toMap()),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
