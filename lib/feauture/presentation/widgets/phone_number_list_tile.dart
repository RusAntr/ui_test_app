import 'package:flutter/material.dart';
import 'package:ui_test_app/config/theme/ui_test_app_icons.dart';

class PhoneNumberListTile extends StatelessWidget {
  const PhoneNumberListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 8,
      minLeadingWidth: 40,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.background,
        ),
        child: Icon(
          UITestApp.phone,
          color: Theme.of(context).colorScheme.secondary,
          size: 20,
        ),
      ),
      title: Text(
        '+1 (201) 123 45 67',
        style: Theme.of(context).textTheme.titleSmall,
      ),
      subtitle: Text(
        'New Jersey',
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontSize: 13,
              color: Theme.of(context).colorScheme.secondary,
            ),
      ),
      trailing: SizedBox(
        width: 100,
        height: 35,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    width: 1, color: Theme.of(context).colorScheme.onSecondary),
              ),
              child: Center(
                child: Text(
                  'S',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 11),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 1,
                      color: Theme.of(context).colorScheme.onSecondary),
                ),
                child: Center(
                  child: Text(
                    'V',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontSize: 11),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
