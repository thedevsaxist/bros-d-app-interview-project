import 'package:bros_d_app_2nd_stage_test/core/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'construction_and_building_grid.dart';

class ServiceCategoryCard extends StatefulWidget {
  final int id;
  final String name;
  final SvgPicture image;

  const ServiceCategoryCard({
    super.key,
    required this.id,
    required this.name,
    required this.image,
  });

  @override
  State<ServiceCategoryCard> createState() => _ServiceCategoryCardState();
}

class _ServiceCategoryCardState extends State<ServiceCategoryCard> {
  @override
  Widget build(BuildContext context) {
    // final OverlayPortalController overlayController = OverlayPortalController();
    return Column(
      mainAxisSize: MainAxisSize.min,
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
          child: GestureDetector(
            onTap: () => showAdaptiveDialog(
              barrierDismissible: true,
              context: context,
              builder: (context) {
                return const Center(child: ConstructionAndBuildingGrid());
              },
            ),
            child: Card(
              color: AppColors.white,
              elevation: 6,
              child: SizedBox(height: 150, width: 200, child: widget.image),
            ),
          ),
        ),

        const SizedBox(height: 10),

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
