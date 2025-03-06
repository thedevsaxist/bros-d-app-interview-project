import 'package:bros_d_app_2nd_stage_test/core/themes.dart';
import 'package:flutter/material.dart';

import '../../core/images.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 40.0,
        top: 20,
        bottom: 10,
        right: MediaQuery.sizeOf(context).width * 0.15,
      ),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: AppIcons.searchIcon,
          ),
          suffixIconConstraints: const BoxConstraints(
            maxHeight: 20,
          ),
          fillColor: AppColors.lightGrey,
          filled: true,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.grey,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
