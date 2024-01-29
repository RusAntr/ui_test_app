import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_test_app/feauture/presentation/screens/calls_screen.dart';
import 'package:ui_test_app/feauture/presentation/screens/contacts_screen.dart';
import 'package:ui_test_app/feauture/presentation/screens/home_screen.dart';
import 'package:ui_test_app/feauture/presentation/screens/main_screen.dart';
import 'package:ui_test_app/feauture/presentation/screens/messages_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _sectionHomeNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'sectionHomeNav');

/// App's router and its configuration
class AppRouter {
  /// Router
  static final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: '/home',
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => MainScreen(
          navigationShell: navigationShell,
        ),
        branches: [
          /// Home page
          StatefulShellBranch(
            navigatorKey: _sectionHomeNavigatorKey,
            routes: <RouteBase>[
              GoRoute(
                name: 'home',
                path: '/home',
                builder: (BuildContext context, GoRouterState state) =>
                    const HomeScreen(),
              )
            ],
          ),

          /// Calls page
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                name: 'calls',
                path: '/calls',
                builder: (BuildContext context, GoRouterState state) =>
                    const CallsScreen(),
              )
            ],
          ),

          /// Messages page
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                name: 'messages',
                path: '/messages',
                builder: (BuildContext context, GoRouterState state) =>
                    const MessagesScreen(),
              )
            ],
          ),

          /// Contacts page
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                name: 'contacts',
                path: '/contacts',
                builder: (BuildContext context, GoRouterState state) =>
                    const ContactsScreen(),
              )
            ],
          ),
        ],
      ),
    ],
  );
}
