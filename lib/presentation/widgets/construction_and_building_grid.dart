import 'package:bros_d_app_2nd_stage_test/data/datasources/construction_and_building_data.dart';
import 'package:flutter/material.dart';

import 'construction_and_building_card.dart';

class ConstructionAndBuildingGrid extends StatefulWidget {
  const ConstructionAndBuildingGrid({super.key});

  @override
  State<ConstructionAndBuildingGrid> createState() =>
      _ConstructionAndBuildingGridState();
}

class _ConstructionAndBuildingGridState
    extends State<ConstructionAndBuildingGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: constructionAndBuildingData.length,
      itemBuilder: (context, index) {
        final item =  constructionAndBuildingData[index];
        return ConstructionAndBuildingCard(
          id: item.id,
          name: item.name,
          image: item.image,
        );
      },
    );
  }
}
