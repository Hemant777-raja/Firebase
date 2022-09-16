import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Shimmerwidget extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;

  const Shimmerwidget.rectangular({
    this.width = double.infinity,
    required this.height,
  }) : this.shapeBorder = const RoundedRectangleBorder();

  const Shimmerwidget.circular(
      {required this.width,
      required this.height,
      this.shapeBorder = const CircleBorder()});
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[300]!,
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          color: Colors.grey[400],
          shape: shapeBorder,
        ),
      ),
    );
  }
}

class Carosel extends StatelessWidget {
  final double wid;
  final double hei;
  final ShapeBorder _shapeBorder;
  const Carosel.rectangal({
  this.wid = double.infinity,
    required this.hei,
  }): this._shapeBorder = const RoundedRectangleBorder();
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[300]!,
      child: Container(
        width: 800,
        height: 800,
        decoration: ShapeDecoration(
          color: Colors.grey[400],
          shape: _shapeBorder,
        ),
      ),
    );
  }
}