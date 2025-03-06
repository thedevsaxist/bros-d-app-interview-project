import 'package:bros_d_app_2nd_stage_test/core/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants.dart';
import '../../core/images.dart';
import '../widgets/custom_search_bar.dart';
import '../widgets/red_app_button.dart';
import '../widgets/tab_nav_buttons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.sizeOf(context).height * 0.2,
        title: const CustomSearchBar(),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome, Eniola',
                style: GoogleFonts.poppins(
                  fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                  color: AppColors.green,
                ),
              ),
              Text(
                '${DateTime.now().month}',
                style: GoogleFonts.poppins(
                  fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                  color: AppColors.black,
                ),
              )
            ],
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Container(
            padding: kPadding20,
            decoration: const BoxDecoration(
              color: AppColors.green,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // logo
                AppLogos.white,

                Row(
                  children: [
                    // home
                    TabNavButtons(
                      text: 'Home',
                      onPressed: () {},
                    ),

                    // product
                    TabNavButtons(
                      text: 'Product',
                      onPressed: () {},
                    ),

                    // Company
                    TabNavButtons(
                      text: 'Company',
                      onPressed: () {},
                    ),

                    // Help
                    TabNavButtons(
                      text: 'Help',
                      onPressed: () {},
                    ),
                  ],
                ),

                // download button
                RedAppButton(
                  label: 'Download Now',
                  onPressed: () {},
                  isInverse: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
