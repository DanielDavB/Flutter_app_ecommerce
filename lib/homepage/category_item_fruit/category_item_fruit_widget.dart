import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_item_fruit_model.dart';
export 'category_item_fruit_model.dart';

class CategoryItemFruitWidget extends StatefulWidget {
  const CategoryItemFruitWidget({Key? key}) : super(key: key);

  @override
  _CategoryItemFruitWidgetState createState() =>
      _CategoryItemFruitWidgetState();
}

class _CategoryItemFruitWidgetState extends State<CategoryItemFruitWidget> {
  late CategoryItemFruitModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryItemFruitModel());
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
        Opacity(
          opacity: FFAppState().categorySelected == 'Dried fruit' ? 1.0 : 0.7,
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              FFAppState().update(() {
                FFAppState().categorySelected = 'Dried fruit';
              });
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.network(
                'https://okkosuperfoods.com/cdn/shop/products/GJ_1024x1024@2x.png?v=1617744205',
                width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          'Dried fruit',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                color: FFAppState().categorySelected == 'Dried fruit'
                    ? Color(0xFF322920)
                    : Color(0xFF71665E),
                fontSize: 12.0,
              ),
        ),
      ].divide(SizedBox(height: 3.0)),
    );
  }
}
