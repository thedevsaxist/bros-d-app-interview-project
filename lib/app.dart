import 'package:flutter/material.dart';

import 'core/themes.dart';
import 'presentation/screens/home_screen.dart';

class BrosDAppDemo extends StatelessWidget {
  const BrosDAppDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bros D App',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
