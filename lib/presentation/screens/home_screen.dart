import 'package:bros_d_app_2nd_stage_test/core/themes.dart';
import 'package:bros_d_app_2nd_stage_test/data/datasources/service_category_data.dart';
import 'package:bros_d_app_2nd_stage_test/data/datasources/top_pro_data.dart';
import 'package:bros_d_app_2nd_stage_test/presentation/widgets/service_category_card.dart';
import 'package:bros_d_app_2nd_stage_test/presentation/widgets/top_pro_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants.dart';
import '../widgets/bullet_text.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/red_app_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();

    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    final toolbarHeight = CustomToolbarHeight(context: context).cToolbarHeight;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(toolbarHeight),
        child: const CustomAppBar(),
      ),

      // body
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            Padding(
              padding: kPaddingButRight80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Artisans Onboarding',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.fontSize,
                            ),
                          ),
                          const BulletText(
                            text:
                                "Access to a network of skilled local artisans, including electricians, plumbers, carpenters, and more.",
                          ),
                          const BulletText(
                            text:
                                "Review your artisan profiles and schedule services for home repairs, renovations, or specialized tasks.",
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          RedAppButton(
                            onPressed: () {},
                            label: 'Discover More',
                          ),
                        ],
                      ),

                      // green family picture
                      Expanded(
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            // family picture
                            Image.asset(
                              'lib/images/family_picture.png',
                              height: MediaQuery.sizeOf(context).height * 0.35,
                            ),

                            // green background
                            Opacity(
                              opacity: 0.8,
                              child: Container(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.35,
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                color: AppColors.green,
                                child: Container(),
                              ),
                            ),

                            // app demo with mascot

                            // app demo
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0, bottom: 30.0),
                    child: Text(
                      'Service Category',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize:
                            Theme.of(context).textTheme.bodyLarge?.fontSize,
                        color: AppColors.red,
                      ),
                    ),
                  ),
                  GridView.builder(
                    padding: kPaddingRight80,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemCount: serviceCategoryList.length,
                    itemBuilder: (context, index) {
                      final item = serviceCategoryList[index];
                      return ServiceCategoryCard(
                        id: item.id,
                        name: item.name,
                        image: item.serviceCategory,
                      );
                    },
                  ),
                  Text(
                    'Top Bros-D Professionals',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: topProData.length,
                      itemBuilder: (context, index) {
                        final item = topProData[index];
                        return TopProCard(
                          name: item.name,
                          occupation: item.occupation,
                          rating: item.rating,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // const Spacer(),

            // bottom section
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.3,
              color: AppColors.black,
              child: const Row(
                children: [
                  // first column
                  Column(
                    children: [],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
