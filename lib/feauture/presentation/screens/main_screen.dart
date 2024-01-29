import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ui_test_app/config/theme/ui_test_app_icons.dart';

/// Main page that contains navigation bar
class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
    required this.navigationShell,
  });
  final StatefulNavigationShell navigationShell;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  /// Current index
  late int _index = widget.navigationShell.currentIndex;

  /// On bar item tap
  void _onTap(int pageIndex) {
    setState(() {
      _index = pageIndex;
    });
    widget.navigationShell.goBranch(
      _index,
      initialLocation: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        onTabChange: (value) => _onTap(value),
        backgroundColor: Theme.of(context).colorScheme.background,
        selectedIndex: _index,
        textStyle: Theme.of(context).textTheme.displaySmall,
        tabs: [
          GButton(
            text: 'Home',
            icon: UITestApp.home,
            iconColor: Theme.of(context).colorScheme.secondary,
            iconActiveColor: Theme.of(context).colorScheme.onPrimary,
            backgroundColor: Theme.of(context).colorScheme.primary,
            padding: const EdgeInsets.all(10),
            iconSize: 20,
            gap: 8,
            margin: const EdgeInsets.all(16),
            // activeColorPrimary: ,
            // inactiveColorPrimary: Theme.of(context).colorScheme.secondary,
          ),
          GButton(
            text: 'Calls',
            icon: UITestApp.phone,
            iconColor: Theme.of(context).colorScheme.secondary,
            iconActiveColor: Theme.of(context).colorScheme.onPrimary,
            backgroundColor: Theme.of(context).colorScheme.primary,
            padding: const EdgeInsets.all(10),
            iconSize: 20,
            gap: 8,
            margin: const EdgeInsets.all(16),
          ),
          GButton(
            text: 'Messages',
            icon: UITestApp.messages,
            iconColor: Theme.of(context).colorScheme.secondary,
            iconActiveColor: Theme.of(context).colorScheme.onPrimary,
            backgroundColor: Theme.of(context).colorScheme.primary,
            padding: const EdgeInsets.all(10),
            iconSize: 20,
            gap: 8,
            margin: const EdgeInsets.all(16),
          ),
          GButton(
            text: 'Contacts',
            icon: UITestApp.profile,
            iconColor: Theme.of(context).colorScheme.secondary,
            iconActiveColor: Theme.of(context).colorScheme.onPrimary,
            backgroundColor: Theme.of(context).colorScheme.primary,
            padding: const EdgeInsets.all(10),
            iconSize: 20,
            gap: 8,
            margin: const EdgeInsets.all(16),
          ),
        ],
      ),
      body: widget.navigationShell,
    );
  }
}
