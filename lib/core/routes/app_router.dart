import 'package:easy_localization/easy_localization.dart';
import 'package:exam_app/features/login/presentation/view/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';

final navigatorKey = GlobalKey<NavigatorState>();
final GoRouter router = GoRouter(
  initialLocation: Routes.login,
  navigatorKey: navigatorKey,
  routes: [
    _customAnimatedGoRoute(
      //ensure to change this to login route not home
      route: Routes.login,
      page: (state, context) =>
          LoginPage(key: ValueKey(context.locale.languageCode.toString())),
    ),
  ],
);

GoRoute _customAnimatedGoRoute({
  required String route,
  required Widget Function(GoRouterState state, BuildContext context) page,
  Duration duration = const Duration(milliseconds: 450),
  Offset beginOffset = const Offset(1, 0),
  Offset endOffset = Offset.zero,
  Curve curve = Curves.easeInOut,
  List<GoRoute> routes = const [],
}) => GoRoute(
  path: route,
  routes: routes,
  pageBuilder: (context, state) => CustomTransitionPage(
    key: state.pageKey,
    child: page(state, context),
    transitionDuration: duration,
    reverseTransitionDuration: duration,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: beginOffset,
          end: endOffset,
        ).animate(CurvedAnimation(parent: animation, curve: curve)),
        child: child,
      );
    },
  ),
);

String getCurrentRoute(BuildContext context) {
  final location = GoRouterState.of(context).uri.toString();
  return location;
}
