import 'package:flutter/material.dart';

class MessageChoiceWidget extends StatefulWidget {
  const MessageChoiceWidget({super.key});

  @override
  State<MessageChoiceWidget> createState() => _MessageChoiceWidgetState();
}

class _MessageChoiceWidgetState extends State<MessageChoiceWidget> {
  /// Option button index
  int _optionIndex = 0;

  /// Visibility
  bool _isVisible = false;

  /// Checkbox
  bool _showNumber = true;

  /// Label texts of option buttons
  final options = ['SMS', 'MMS', 'Voice'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          /// Generates option buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...List.generate(
                3,
                (index) {
                  bool isSelected = _optionIndex == index;
                  return ChoiceChip(
                    label: Text(options[index]),
                    selectedColor: Theme.of(context).colorScheme.primary,
                    labelStyle: Theme.of(context).textTheme.bodyMedium,
                    labelPadding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 30),
                    disabledColor: Theme.of(context).colorScheme.background,
                    backgroundColor: isSelected
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.background,
                    visualDensity:
                        const VisualDensity(vertical: -2, horizontal: -2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    showCheckmark: false,
                    selected: isSelected,
                    onSelected: (value) {
                      _optionIndex = index;
                      setState(() {});
                    },
                  );
                },
              )
            ],
          ),
          const SizedBox(height: 16),

          /// Landline or Mobile
          Container(
            padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Visibility title and action
                GestureDetector(
                  onTap: () {
                    setState(() {});
                    _isVisible = !_isVisible;
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Landline or Mobile',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Icon(
                        _isVisible
                            ? Icons.keyboard_arrow_up_rounded
                            : Icons.keyboard_arrow_down_rounded,
                        size: 30,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ],
                  ),
                ),

                /// Hide/Show
                Visibility(
                  visible: _isVisible,
                  child: SizedBox(
                    height: 100,
                    child: Center(
                      child: Text(
                        'Surprise! This is a hidden text!',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// Check button show number
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                visualDensity: const VisualDensity(horizontal: -4),
                value: _showNumber,
                onChanged: (value) {
                  setState(() {});
                  _showNumber = value!;
                },
                shape: const CircleBorder(),
              ),
              Text(
                'Show number without verification',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
