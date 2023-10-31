import 'package:flutter/material.dart';
import 'package:repeat_third_time/pages/profilepage/profile_page.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});
  static const String route = "/setting";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("Setting Page"),
        centerTitle: true,
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        actions: [
          const Text("Profile Page"),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, ProfilePage.route,
                  arguments: "Profile Page");
            },
            icon: const Icon(Icons.person),
          )
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.settings, size: 40),
            SizedBox(
              height: 12,
            ),
            Text(
              "Your Settings Page",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
