import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return AppBar(
      leadingWidth: 20,
      toolbarHeight: MediaQuery.sizeOf(context).height * 0.15,
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
                '${DateTime.now().weekday} ${DateTime.now().day} ${DateTime.now().month} ${DateTime.now().year}',
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
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
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
    );
  }
}
