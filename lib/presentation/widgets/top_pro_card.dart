import 'package:bros_d_app_2nd_stage_test/core/constants.dart';
import 'package:bros_d_app_2nd_stage_test/core/images.dart';
import 'package:bros_d_app_2nd_stage_test/core/themes.dart';
import 'package:bros_d_app_2nd_stage_test/presentation/widgets/rating.dart';
import 'package:flutter/material.dart';

class TopProCard extends StatefulWidget {
  final String name;
  final String occupation;
  final double rating;

  const TopProCard({
    super.key,
    required this.name,
    required this.occupation,
    required this.rating,
  });

  @override
  State<TopProCard> createState() => _TopProCardState();
}

class _TopProCardState extends State<TopProCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingRight80,
      child: SizedBox(
        width: 200,
        height: 300,
        child: Card(
          color: AppColors.beige,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppImages.mascot2,

                kSizedBoxHeight20,

                // name
                Text(widget.name, style: Theme.of(context).textTheme.bodyLarge),

                // occupation
                Text(
                  widget.occupation,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: AppColors.darkGrey,
                      ),
                ),
                kSizedBoxHeight20,

                // rating
                Rating(rating: widget.rating),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
