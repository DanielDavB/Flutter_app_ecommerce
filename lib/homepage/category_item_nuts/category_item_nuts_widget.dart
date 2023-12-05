import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_item_nuts_model.dart';
export 'category_item_nuts_model.dart';

class CategoryItemNutsWidget extends StatefulWidget {
  const CategoryItemNutsWidget({Key? key}) : super(key: key);

  @override
  _CategoryItemNutsWidgetState createState() => _CategoryItemNutsWidgetState();
}

class _CategoryItemNutsWidgetState extends State<CategoryItemNutsWidget> {
  late CategoryItemNutsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryItemNutsModel());
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
          opacity: FFAppState().categorySelected == 'Nuts' ? 1.0 : 0.7,
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              FFAppState().update(() {
                FFAppState().categorySelected = 'Nuts';
              });
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.network(
                'https://okkosuperfoods.com/cdn/shop/products/NUTBAR-12_1_1024x1024@2x.jpg?v=1694024052',
                width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          'Nuts',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                color: FFAppState().categorySelected == 'Nuts'
                    ? Color(0xFF322920)
                    : Color(0xFF71665E),
                fontSize: 12.0,
              ),
        ),
      ].divide(SizedBox(height: 3.0)),
    );
  }
}
