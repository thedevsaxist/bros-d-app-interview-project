import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg_provider;

/* 
  This file contains classes that manage SVG assets for the application.
  Each class groups related SVG images into categories for easy access and organization.
*/

/// Contains common app icons used throughout the application
class AppIcons {
  /// Dropdown menu indicator icon
  static final SvgPicture dropdownIcon = SvgPicture.asset(
    'lib/images/icons/dropdown.svg',
    height: 8,
    fit: BoxFit.contain,
  );

  /// Search functionality icon
  static final SvgPicture searchIcon = SvgPicture.asset(
    'lib/images/icons/bros_d_search.svg',
    height: 24,
    fit: BoxFit.contain,
  );

  /// Notification bell icon
  static final SvgPicture notificationIcon =
      SvgPicture.asset('lib/images/icons/notification.svg');
}

/// Contains app logo variants
class AppLogos {
  /// White version of app logo
  static final SvgPicture white = SvgPicture.asset(
    'lib/images/logos/logo_white.svg',
    height: 30,
    fit: BoxFit.cover,
  );

  /// Colored version of app logo
  static final SvgPicture colored =
      SvgPicture.asset('lib/images/logos/logo_colored.svg');

  static final Image coloredPNG = Image.asset(
    'lib/images/logos/bros_d_logo.png',
    // height: 57,
    fit: BoxFit.contain,
  );
}

/// Contains icons representing different service categories
class ServiceCategory {
  /// Electrical services icon
  static final SvgPicture electrical =
      SvgPicture.asset('lib/images/service_category/electrician.svg');

  /// Logistics/delivery services icon
  static final SvgPicture logistic =
      SvgPicture.asset('lib/images/service_category/delivery_rider.svg');

  /// Creative services icon
  static final SvgPicture creative =
      SvgPicture.asset('lib/images/service_category/idea_guy.svg');

  /// Engineering services icon
  static final SvgPicture engineering =
      SvgPicture.asset('lib/images/service_category/contractor.svg');

  /// Electronics services icon
  static final SvgPicture electronics =
      SvgPicture.asset('lib/images/service_category/tech_guy.svg');

  /// Home services icon
  static final SvgPicture homeServices =
      SvgPicture.asset('lib/images/service_category/cleaning_dude.svg');

  /// Craftsmanship services icon
  static final SvgPicture craftsmanship =
      SvgPicture.asset('lib/images/service_category/wood_craftsman.svg');

  /// Mechanical services icon
  static final SvgPicture mechanical = SvgPicture.asset(
      'lib/images/service_category/mechanic-replacing-parts-cartoon-style 1.svg');

  /// Construction services icon
  static final SvgPicture constructionAndBuilding =
      SvgPicture.asset('lib/images/service_category/cement_guy.svg');

  /// Domestic services icon
  static final SvgPicture domesticServices =
      SvgPicture.asset('lib/images/service_category/cleaning_lady.svg');

  /// Unskilled labor services icon
  static final SvgPicture unskilledProfessionals =
      SvgPicture.asset('lib/images/service_category/jack_hammer_guy.svg');

  /// Event planning services icon
  static final SvgPicture eventPlanningAndManagement = SvgPicture.asset(
      'lib/images/service_category/young-smiling-business-woman-pointing-calendar-clock 2.svg');
}

/// Contains general app images
class AppImages {
  /// Family illustration
  static const familyPicture =
      svg_provider.Svg('lib/images/family_picture.svg');

  /// Demo app screenshot with mascot
  static final SvgPicture demoAppWithMascot =
      SvgPicture.asset('lib/images/demo_app_mascot.svg');

  /// Demo app screenshot
  static final SvgPicture demoApp = SvgPicture.asset('lib/images/demo_app.svg');

  /// App mascot illustration
  static final SvgPicture mascot = SvgPicture.asset(
    'lib/images/bros_d_app_mascot.svg',
    height: 24,
    fit: BoxFit.cover,
  );

  static final Image mascot2 = Image.asset(
    'lib/images/mascot.png',
    height: 50,
    fit: BoxFit.cover,
  );
}

/// Contains construction and building related service icons
class ConstructionAndBuilding {
  /// Scaffolding service icon
  static final SvgPicture scaffolding =
      SvgPicture.asset('lib/images/construction_and_building/scaffolding.svg');

  /// Concrete work service icon
  static final SvgPicture concreteWork = SvgPicture.asset(
      'lib/images/construction_and_building/concrete_work.svg');

  /// Tiling service icon
  static final SvgPicture tilers =
      SvgPicture.asset('lib/images/construction_and_building/tilers.svg');

  /// POP screeding service icon
  static final SvgPicture popScreeding = SvgPicture.asset(
      'lib/images/construction_and_building/pop_screeding.svg');

  /// Painting service icon
  static final SvgPicture painter =
      SvgPicture.asset('lib/images/construction_and_building/painter.svg');

  /// Plumbing service icon
  static final SvgPicture plumbers =
      SvgPicture.asset('lib/images/construction_and_building/plumbers.svg');

  /// Welding service icon
  static final SvgPicture welder =
      SvgPicture.asset('lib/images/construction_and_building/welder.svg');

  /// Tiles service icon
  static final SvgPicture tiles =
      SvgPicture.asset('lib/images/construction_and_building/tiles.svg');

  /// Bricklaying service icon
  static final SvgPicture bricklayers =
      SvgPicture.asset('lib/images/construction_and_building/bricklayers.svg');

  /// Carpentry service icon
  static final SvgPicture carpenters =
      SvgPicture.asset('lib/images/construction_and_building/carpenters.svg');

  /// Civil engineering service icon
  static final SvgPicture civilEngineering = SvgPicture.asset(
      'lib/images/construction_and_building/civil_engineering.svg');
}
