import 'package:flutter/material.dart';
import 'package:ui_test_app/feauture/presentation/widgets/phone_number_list_tile.dart';

class PhoneNumbersWidget extends StatelessWidget {
  const PhoneNumbersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          /// Country flag + country name
          Row(
            children: [
              CircleAvatar(
                radius: 12,
                backgroundImage:
                    Image.asset('assets/images/usa_flag.png').image,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  'United States',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(18),
            ),

            /// Generating [PhoneNumberListTile]
            child: ListView.builder(
              itemCount: 3,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => const PhoneNumberListTile(),
            ),
          ),
        ],
      ),
    );
  }
}
