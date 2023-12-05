import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'selected_product_model.dart';
export 'selected_product_model.dart';

class SelectedProductWidget extends StatefulWidget {
  const SelectedProductWidget({Key? key}) : super(key: key);

  @override
  _SelectedProductWidgetState createState() => _SelectedProductWidgetState();
}

class _SelectedProductWidgetState extends State<SelectedProductWidget> {
  late SelectedProductModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectedProductModel());
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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 25.0),
      child: Stack(
        alignment: AlignmentDirectional(0.0, 0.0),
        children: [
          Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 250.0,
              decoration: BoxDecoration(
                color: Color(0xFFD99F50),
                shape: BoxShape.rectangle,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Container(
              width: 350.0,
              decoration: BoxDecoration(
                color: Color(0x00FF9958),
                shape: BoxShape.rectangle,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'product',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 200),
                          ),
                        },
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        valueOrDefault<String>(
                          FFAppState().selectedProduct.img,
                          'https://okkosuperfoods.com/cdn/shop/products/NUTBAR-12_1_1024x1024@2x.jpg?v=1694024052',
                        ),
                        width: 80.0,
                        height: 120.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          FFAppState().selectedProduct.title,
                          'select a product',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          '\$${valueOrDefault<String>(
                            FFAppState().selectedProduct.price.toString(),
                            '0',
                          )}',
                          '0',
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
                      FFButtonWidget(
                        onPressed: () async {
                          setState(() {
                            FFAppState().addToCartList(ProductStruct.fromMap(
                                FFAppState().selectedProduct.toMap()));
                          });
                          ScaffoldMessenger.of(context).clearSnackBars();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Product added',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                              duration: Duration(milliseconds: 1500),
                              backgroundColor: Color(0xFFFF9958),
                            ),
                          );
                        },
                        text: 'Add to cart',
                        icon: Icon(
                          Icons.shopping_cart_sharp,
                          color: Color(0xFF322920),
                          size: 20.0,
                        ),
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Colors.white,
                          textStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF322920),
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).info,
                      shape: BoxShape.circle,
                    ),
                    child: ToggleIcon(
                      onPressed: () async {
                        setState(() => _model.isLiked = !_model.isLiked);
                      },
                      value: _model.isLiked,
                      onIcon: Icon(
                        Icons.favorite_sharp,
                        color: Color(0xFFFF2424),
                        size: 25.0,
                      ),
                      offIcon: Icon(
                        Icons.favorite_border,
                        color: Color(0xFF322920),
                        size: 25.0,
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 35.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
