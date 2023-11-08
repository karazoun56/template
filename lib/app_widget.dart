import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/localization/localization_services.dart';
import 'app/router/router.dart';
import 'app/utils/app_utils.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      designSize: AppUtils().designSize,
      builder: (context, child) {
        return GetMaterialApp(
          getPages: AppRouter().routes,
          locale: Get.deviceLocale,
          translations: LocalizationService(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
