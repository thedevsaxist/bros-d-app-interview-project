import 'package:bros_d_app_2nd_stage_test/core/constants.dart';
import 'package:bros_d_app_2nd_stage_test/core/themes.dart';
import 'package:flutter/material.dart';

class RedAppButton extends StatefulWidget {
  final void Function() onPressed;
  final String label;
  final bool? isInverse;

  const RedAppButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.isInverse,
  });

  @override
  State<RedAppButton> createState() => _RedAppButtonState();
}

class _RedAppButtonState extends State<RedAppButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(
            horizontal: 11,
            vertical: 16,
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(
          widget.isInverse == null ? AppColors.red : AppColors.white,
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: kBorderRadius,
          ),
        ),
      ),
      onPressed: widget.onPressed,
      child: Text(
        widget.label,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: widget.isInverse == null ? AppColors.white : AppColors.red,
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }
}
