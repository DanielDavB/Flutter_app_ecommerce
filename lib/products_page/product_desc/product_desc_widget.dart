import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_desc_model.dart';
export 'product_desc_model.dart';

class ProductDescWidget extends StatefulWidget {
  const ProductDescWidget({Key? key}) : super(key: key);

  @override
  _ProductDescWidgetState createState() => _ProductDescWidgetState();
}

class _ProductDescWidgetState extends State<ProductDescWidget> {
  late ProductDescModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductDescModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            valueOrDefault<String>(
              FFAppState().selectedProduct.title,
              'title',
            ),
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                valueOrDefault<String>(
                  FFAppState().selectedProduct.desc,
                  'desc',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                    ),
              ),
              RatingBarIndicator(
                itemBuilder: (context, index) => Icon(
                  Icons.star_outlined,
                  color: Colors.white,
                ),
                direction: Axis.horizontal,
                rating: valueOrDefault<double>(
                  FFAppState().selectedProduct.ranking.toDouble(),
                  0.0,
                ),
                unratedColor: Color(0x46FFFFFF),
                itemCount: 5,
                itemSize: 20.0,
              ),
            ],
          ),
        ].divide(SizedBox(height: 3.0)),
      ),
    );
  }
}
