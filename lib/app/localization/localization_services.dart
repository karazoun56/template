import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ar.dart';
import 'en.dart';

class LocalizationService extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': EnUs.singleton.en,
        'ar_SU': ArSa.singleton.ar,
      };

  static const locales = [
    Locale('ar', 'AR'),
    Locale('en', 'US'),
  ];
}
