import 'package:flutter/material.dart';

import '../../core/images.dart';
import '../../core/themes.dart';

class TabNavButtons extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const TabNavButtons({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: TextButton.icon(
        iconAlignment: IconAlignment.end,
        icon: AppIcons.dropdownIcon,
        onPressed: onPressed,
        label: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
