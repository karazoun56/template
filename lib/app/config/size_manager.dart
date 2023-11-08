import 'package:flutter_screenutil/flutter_screenutil.dart';

class SizeManager {
  static final SizeManager _instance = SizeManager._internal();

  factory SizeManager() => _instance;

  SizeManager._internal();

  // Radius
  final double r10 = 10.0.r;

  // Width
  final double w10 = 10.0.w;

  // Height
  final double h10 = 10.0.h;

  // Font size
  final double f10 = 10.sp;
  final double f11 = 11.sp;
  final double f12 = 12.sp;
  final double f14 = 14.sp;
  final double f16 = 16.sp;
  final double f18 = 18.sp;
  final double f20 = 20.sp;
  final double f24 = 24.sp;
  final double f28 = 28.sp;
}
