import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/go_router/app_router_constants.dart';
import 'package:go_router_example/screens/about.dart';
import 'package:go_router_example/screens/contact_us.dart';
import 'package:go_router_example/screens/error_page.dart';
import 'package:go_router_example/screens/home.dart';
import 'package:go_router_example/screens/profile.dart';

class NyAppRouter {
  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: MyAppRouteConstants.homeRouteName,
          path: '/',
          pageBuilder: (context, state) {
            return const MaterialPage(child: Home());
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.profileRouteName,
          path: '/profile/:username/:userid',
          pageBuilder: (context, state) {
            return MaterialPage(
              child: Profile(
                userid: state.pathParameters['userid']!,
                username: state.pathParameters['username']!,
              ),
            );
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.aboutRouteName,
          path: '/about',
          pageBuilder: (context, state) {
            return const MaterialPage(child: About());
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.contactUsRouteName,
          path: '/contact_us',
          pageBuilder: (context, state) {
            return const MaterialPage(child: ContactUs());
          },
        )
      ],
      errorPageBuilder: (context, state) {
        return const MaterialPage(child: ErrorPage());
      },
      redirect: (context, state) {
        if (!isAuth &&
            state.matchedLocation
                .startsWith('/${MyAppRouteConstants.profileRouteName}')) {
          return "/${MyAppRouteConstants.contactUsRouteName}";
        } else {
          return null;
        }
      },
    );
    return router;
  }
}
