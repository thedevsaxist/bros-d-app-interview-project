import 'package:bros_d_app_2nd_stage_test/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/themes.dart';

class ConstructionAndBuildingCard extends StatefulWidget {
  final int id;
  final String name;
  final SvgPicture image;
  const ConstructionAndBuildingCard({
    super.key,
    required this.name,
    required this.id,
    required this.image,
  });

  @override
  State<ConstructionAndBuildingCard> createState() =>
      _ConstructionAndBuildingCardState();
}

class _ConstructionAndBuildingCardState
    extends State<ConstructionAndBuildingCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Badge(
          largeSize: 48,
          backgroundColor: AppColors.green,
          label: Text(
            widget.id.toString(),
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: AppColors.white,
                ),
          ),
          child: Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppColors.white,
              ),
              borderRadius: kBorderRadius,
            ),
            child: widget.image,
          ),
        ),

        // name
        Text(
          widget.name,
          style: Theme.of(context)
              .textTheme
              .labelLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
