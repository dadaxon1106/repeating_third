import 'package:flutter/material.dart';
import 'package:repeat_third_time/pages/settingpage/setting_page.dart';
import 'package:repeat_third_time/pages/profilepage/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String route = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Home Page",
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        shadowColor: Colors.purple,
        elevation: 10,
      ),
      drawer: const Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Text(
              "Settings",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Profile",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Profile Page",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.home,
              size: 40,
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, ProfilePage.route,
                  arguments: "Dadaxon");
            },
            backgroundColor: Colors.red,
            child: const Icon(Icons.person),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, SettingPage.route);
            },
            backgroundColor: Colors.green,
            child: const Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
