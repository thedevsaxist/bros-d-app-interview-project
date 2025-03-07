import 'package:flutter/material.dart';

const EdgeInsets kPadding20 = EdgeInsets.all(20);
const EdgeInsets kPaddingRight20 = EdgeInsets.only(right: 20);
const EdgeInsets kPaddingRight30 = EdgeInsets.only(right: 30);
const EdgeInsets kPaddingRight80 = EdgeInsets.only(right: 80);
const EdgeInsets kPaddingAll80 = EdgeInsets.all(80);
const EdgeInsets kPaddingButRight80 =
    EdgeInsets.fromLTRB(100.0, 100.0, 0.0, 100.0);
final BorderRadius kBorderRadius = BorderRadius.circular(12);
const String kBullet = '\u2022';
const SizedBox kSizedBoxHeight20 = SizedBox(height: 20);

class CustomToolbarHeight {
  BuildContext context;
  CustomToolbarHeight({required this.context});

  double get cToolbarHeight => MediaQuery.of(context).size.height * 0.2;
}
