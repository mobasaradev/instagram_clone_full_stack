import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/theme.dart';

import 'responsive/mobile_screen_layout.dart';
import 'responsive/responsive_screen.dart';
import 'responsive/web_screen_layout.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: AppTheme.darkTheme,
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}