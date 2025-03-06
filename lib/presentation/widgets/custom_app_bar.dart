import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../core/constants.dart';
import '../../core/images.dart';
import '../../core/themes.dart';
import 'custom_search_bar.dart';
import 'red_app_button.dart';
import 'tab_nav_buttons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final toolbarHeight = CustomToolbarHeight(context: context).cToolbarHeight;

    final String formattedDate = DateFormat('EEEE, MMMM d, y').format(
      DateTime.now(),
    );
    return AppBar(
      // leadingWidth: 20,
      toolbarHeight: toolbarHeight,
      title: const CustomSearchBar(),
      actions: [
        Padding(
          padding: kPaddingRight80,
          child: Column(
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
                formattedDate,
                style: GoogleFonts.poppins(
                  fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
        ),

        // notification button
        Padding(
          padding: kPaddingRight30,
          child: IconButton(
            onPressed: () {},
            icon: AppIcons.notificationIcon,
          ),
        ),

        // mascot
        Padding(
          padding: kPaddingRight30,
          child: AppImages.mascot2,
        ),
      ],

      // green bar
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          decoration: const BoxDecoration(
            color: AppColors.green,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // logo
              AppLogos.white,

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
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
    );
  }
}
