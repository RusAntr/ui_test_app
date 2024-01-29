import 'package:flutter/material.dart';
import 'package:ui_test_app/feauture/presentation/widgets/app_bar.dart';
import 'package:ui_test_app/feauture/presentation/widgets/message_choice_widget.dart';
import 'package:ui_test_app/feauture/presentation/widgets/phone_numbers_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          children: [
            const SizedBox(height: 10),

            /// Faux appbar
            const FauxAppBar(),
            const SizedBox(height: 20),

            /// Sms/Mms/Voice options
            const MessageChoiceWidget(),

            /// Phone numbers
            ...List.generate(
              3,
              (index) => const PhoneNumbersWidget(),
            )
          ],
        ),
      ),
    );
  }
}
