import 'package:flutter/material.dart';
import 'package:repeat_third_time/pages/homepage/home_page.dart';
import 'package:repeat_third_time/pages/profilepage/profile_page.dart';
import 'package:repeat_third_time/pages/settingpage/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Repeating third time",
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) {
          return const HomePage();
        },
        ProfilePage.route: (context) => const ProfilePage(),
        SettingPage.route: (context) => const SettingPage(),
      },
    );
  }
}
