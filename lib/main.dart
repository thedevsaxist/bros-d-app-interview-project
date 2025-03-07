import 'package:bros_d_app_2nd_stage_test/presentation/state/home_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeScreenViewModel>(
          create: (_) => HomeScreenViewModel(),
        ),
      ],
      child: const BrosDAppDemo(),
    ),
  );
}
