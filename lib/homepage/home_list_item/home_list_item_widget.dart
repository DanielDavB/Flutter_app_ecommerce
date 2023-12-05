import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_list_item_model.dart';
export 'home_list_item_model.dart';

class HomeListItemWidget extends StatefulWidget {
  const HomeListItemWidget({
    Key? key,
    String? imgLink,
    required this.id,
    required this.product,
  })  : this.imgLink = imgLink ??
            'data:image/png;base64,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',
        super(key: key);

  final String imgLink;
  final int? id;
  final ProductStruct? product;

  @override
  _HomeListItemWidgetState createState() => _HomeListItemWidgetState();
}

class _HomeListItemWidgetState extends State<HomeListItemWidget> {
  late HomeListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeListItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.00, 0.00),
      child: Container(
        width: 80.0,
        height: 80.0,
        child: Stack(
          alignment: AlignmentDirectional(0.0, 0.0),
          children: [
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: Color(0xFFC07474),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().update(() {
                    FFAppState().selectedProduct =
                        ProductStruct.fromMap(widget.product!.toMap());
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    valueOrDefault<String>(
                      widget.imgLink,
                      'https://wellbeloved.com/cdn/shop/products/5025838042034_T14a_394x.png?v=1681890909',
                    ),
                    width: valueOrDefault<double>(
                      widget.product?.title ==
                              FFAppState().selectedProduct.title
                          ? 90.0
                          : 70.0,
                      70.0,
                    ),
                    height: valueOrDefault<double>(
                      widget.product?.title ==
                              FFAppState().selectedProduct.title
                          ? 90.0
                          : 70.0,
                      70.0,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
