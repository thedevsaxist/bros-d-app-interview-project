import 'package:bros_d_app_2nd_stage_test/presentation/state/home_screen_view_model.dart';
import 'package:device_preview/device_preview.dart';
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
        child: DevicePreview(
          backgroundColor: Colors.white,
          enabled: true,
          defaultDevice: Devices.macOS.macBookPro,
          isToolbarVisible: true,
          availableLocales: const [Locale('en', 'US')],
          tools: const [
            // ...DevicePreview.defaultTools,
            DeviceSection(
              model: false,
              orientation: false,
              frameVisibility: false,
              virtualKeyboard: false,
            ),
          ],
          devices: [

            Devices.macOS.macBookPro,
            Devices.windows.laptop,
            // Devices.ios.iPhoneSE,
            // Devices.ios.iPhone12Mini,
            // Devices.ios.iPhone13,
            // Devices.ios.iPad,
            // Devices.android.samsungGalaxyA50,
          ],
          builder: (context) => const BrosDAppDemo(),
        )),
  );
}
