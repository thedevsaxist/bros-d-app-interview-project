import 'package:bros_d_app_2nd_stage_test/core/themes.dart';
import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  const Rating({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  Widget _buildStar(int index, double size) {
    if (widget.rating >= index + 1) {
      return Icon(
        Icons.star_rounded,
        size: size,
        color: AppColors.yellow,
      );
    } else if (widget.rating >= index + 0.5) {
      return Icon(
        Icons.star_half_rounded,
        size: size,
        color: AppColors.yellow,
      );
    } else {
      return Icon(
        Icons.star_outline_rounded,
        size: size,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) => _buildStar(index, 30)),
    );
  }
}
