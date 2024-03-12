import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/app_config.dart';
import 'package:instagram_clone/utils/theme.dart';
import 'package:instagram_clone/view/auth/register_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConfig.title,
      theme: AppTheme.darkTheme,
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      home: const RegisterPage(),
    );
  }
}
