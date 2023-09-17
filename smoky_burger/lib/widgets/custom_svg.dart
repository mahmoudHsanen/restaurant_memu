// * Packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvg extends StatelessWidget {
  final String path;
  final ColorFilter? colorFilter;
  final double? height;
  final double? width;

  const CustomSvg(
    this.path, {
    super.key,
    this.colorFilter,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      allowDrawingOutsideViewBox: true,
      path,
      colorFilter:
          colorFilter, // ex -> ColorFilter.mode(Colors.red, BlendMode.srcIn)
      height: height,
      width: width,
    );
  }
}
