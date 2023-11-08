import 'package:flutter/material.dart';

import 'app/utils/shared_prefs.dart';
import 'app_widget.dart';
import 'data/providers/network/core/dio_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.instance.initPrefs();
  DioManager.getInstance.init();
  runApp(const AppWidget());
}
