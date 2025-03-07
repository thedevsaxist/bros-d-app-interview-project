import 'package:bros_d_app_2nd_stage_test/core/images.dart';
import 'package:bros_d_app_2nd_stage_test/core/themes.dart';
import 'package:bros_d_app_2nd_stage_test/data/datasources/service_category_data.dart';
import 'package:bros_d_app_2nd_stage_test/data/datasources/top_pro_data.dart';
import 'package:bros_d_app_2nd_stage_test/presentation/state/home_screen_view_model.dart';
import 'package:bros_d_app_2nd_stage_test/presentation/widgets/service_category_card.dart';
import 'package:bros_d_app_2nd_stage_test/presentation/widgets/top_pro_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../core/constants.dart';
import '../widgets/bullet_text.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/form_input.dart';
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
    final viewModel = Provider.of<HomeScreenViewModel>(context);

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
              // height: MediaQuery.sizeOf(context).height * 0.5,
              decoration: const BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 70.0, vertical: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // first column
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppLogos.colored,
                            Text(
                              'Speak to our Team',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    color: AppColors.white,
                                  ),
                            ),
                            FormInput(
                              hintText: 'Full Name',
                              controller: viewModel.fullNameController,
                            ),
                            FormInput(
                              hintText: 'Address',
                              controller: viewModel.addressController,
                            ),
                            FormInput(
                              hintText: 'Email',
                              controller: viewModel.emailController,
                            ),
                            FormInput(
                              hintText: 'Phone Number',
                              controller: viewModel.phoneNumberController,
                            ),

                            // submit button
                            RedAppButton(
                              onPressed: () {},
                              label: 'Submit',
                            ),
                          ],
                        ),

                        // map
                        Image.asset(
                          'lib/images/map.png',
                          fit: BoxFit.contain,
                          scale: 2.2,
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // fast links section
                            Text(
                              'Fast Links',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w800,
                                color: AppColors.white,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.fontSize,
                              ),
                            ),

                            // careers
                            FastLinks(
                              text: 'Careers',
                              onPressed: () {},
                            ),

                            // contact us
                            FastLinks(
                              text: 'Contact Us',
                              onPressed: () {},
                            ),

                            // webapp
                            FastLinks(
                              text: 'WebApp',
                              onPressed: () {},
                            ),

                            // FAQs
                            FastLinks(
                              text: 'FAQs',
                              onPressed: () {},
                            ),

                            // About Us
                            FastLinks(
                              text: 'Careers',
                              onPressed: () {},
                            ), // careers

                            const SizedBox(height: 10),

                            // download button
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(0),
                              ),
                              child: Text(
                                'Download App',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.white,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.fontSize,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        padding: kPadding20,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.white,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // privacy policy
                                BottomNavBarButtons(
                                  onPressed: () {},
                                  text: 'Privacy Policy | ',
                                ),

                                // terms of use
                                BottomNavBarButtons(
                                  onPressed: () {},
                                  text: 'Terms of Use | ',
                                ),

                                // refund policy
                                BottomNavBarButtons(
                                  onPressed: () {},
                                  text: 'Refund Policy',
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "We're on Socials: ",
                                  style: GoogleFonts.poppins(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.fontSize,
                                  ),
                                ),
                                AppLogos.youTubeLogo,
                                AppLogos.threadsLogo,
                                AppLogos.facebookLogo,
                                AppLogos.twitterLogo,
                                AppLogos.instagramLogo,
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavBarButtons extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const BottomNavBarButtons({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          color: AppColors.white,
          fontWeight: FontWeight.w500,
          fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
        ),
      ),
    );
  }
}

class FastLinks extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const FastLinks({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          color: AppColors.white,
          fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
        ),
      ),
    );
  }
}
