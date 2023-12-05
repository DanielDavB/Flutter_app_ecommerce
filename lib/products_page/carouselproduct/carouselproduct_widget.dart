import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'carouselproduct_model.dart';
export 'carouselproduct_model.dart';

class CarouselproductWidget extends StatefulWidget {
  const CarouselproductWidget({
    Key? key,
    this.parameter1,
  }) : super(key: key);

  final List<String>? parameter1;

  @override
  _CarouselproductWidgetState createState() => _CarouselproductWidgetState();
}

class _CarouselproductWidgetState extends State<CarouselproductWidget> {
  late CarouselproductModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarouselproductModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(
      builder: (context) {
        final productImages =
            FFAppState().selectedProduct.images.map((e) => e).toList();
        return Container(
          width: double.infinity,
          height: 180.0,
          child: CarouselSlider.builder(
            itemCount: productImages.length,
            itemBuilder: (context, productImagesIndex, _) {
              final productImagesItem = productImages[productImagesIndex];
              return ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  valueOrDefault<String>(
                    productImagesItem,
                    'https://okkosuperfoods.com/cdn/shop/products/NUTBAR-12_1_1024x1024@2x.jpg?v=1694024052',
                  ),
                  width: 200.0,
                  height: 250.0,
                  fit: BoxFit.contain,
                ),
              );
            },
            carouselController: _model.carouselController ??=
                CarouselController(),
            options: CarouselOptions(
              initialPage: min(1, productImages.length - 1),
              viewportFraction: 0.5,
              disableCenter: true,
              enlargeCenterPage: true,
              enlargeFactor: 0.25,
              enableInfiniteScroll: true,
              scrollDirection: Axis.horizontal,
              autoPlay: false,
              onPageChanged: (index, _) => _model.carouselCurrentIndex = index,
            ),
          ),
        );
      },
    );
  }
}
