import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getshortlet/features/home/presentation/ui/screen/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:getshortlet/core/route/route_name.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/home',
      routes: [
    GoRoute(
      path: '/home',
      name: homeScreenRoute,
      builder: (context, state) => const HomeScreen(),
    )
  ]);
});
