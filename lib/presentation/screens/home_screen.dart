import 'package:bros_d_app_2nd_stage_test/core/themes.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.sizeOf(context).height * 0.23),
        child: const CustomAppBar(),
      ),

      // body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: kPaddingButRight80,
              child: Column(
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
                      )
                    ],
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
