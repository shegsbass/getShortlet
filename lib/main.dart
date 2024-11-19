import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getshortlet/core/route/go_router_provider.dart';

import 'configure_web.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    configureApp();
  }
  runApp(const ProviderScope(
      child: MyApp()
  ));
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.stylus,
    PointerDeviceKind.unknown,
    PointerDeviceKind.trackpad
  };
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return ScreenUtilInit(
      designSize: const Size(1728, 812),
      builder: (c, d) => MaterialApp.router(
        routerConfig: goRouter,
        scrollBehavior: MyCustomScrollBehavior(),
        debugShowCheckedModeBanner: false,
      )
    );
  }
}

