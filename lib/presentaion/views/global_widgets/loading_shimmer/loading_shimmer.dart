import 'package:flutter/material.dart';

import '../../../../app/config/const_gifs.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      loadingShimmer,
      fit: BoxFit.cover,
    );
  }
}
