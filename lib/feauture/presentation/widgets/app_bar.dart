import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_test_app/config/theme/ui_test_app_icons.dart';

class FauxAppBar extends StatelessWidget {
  const FauxAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Icon + phone number
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                UITestApp.menu,
                size: 13,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                '+12021234567',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),

        /// Icons
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                UITestApp.chart,
                size: 18,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  UITestApp.messages,
                  size: 18,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(100),
              ),
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/icons/Bell.svg',
                width: 18,
                height: 18,
                fit: BoxFit.none,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
