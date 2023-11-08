import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension DoubleExtension on num {
  SizedBox get spaceW => SizedBox(width: toDouble().w);
  SizedBox get spaceH => SizedBox(height: toDouble().h);

  BorderRadius get radius => BorderRadius.circular(toDouble().r);
  BorderRadius get radiusBottom =>
      BorderRadius.vertical(bottom: Radius.circular(toDouble().r));
  BorderRadius get radiusTop =>
      BorderRadius.vertical(top: Radius.circular(toDouble().r));

  EdgeInsetsGeometry get padding => EdgeInsets.all(toDouble().r);
  EdgeInsetsGeometry get paddingW =>
      EdgeInsets.symmetric(horizontal: toDouble().r);
  EdgeInsetsGeometry get paddingH =>
      EdgeInsets.symmetric(vertical: toDouble().r);
  EdgeInsetsGeometry get paddingTop => EdgeInsets.only(top: toDouble().r);
  EdgeInsetsGeometry get paddingBottom => EdgeInsets.only(bottom: toDouble().r);
}
