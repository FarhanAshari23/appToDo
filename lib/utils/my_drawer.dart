import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:to_do_app/utils/my_listitle.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Lottie.asset(
              'assets/run.json',
            ),
          ),
          const SizedBox(height: 10),
          MyListTile(
            icon: Icons.home,
            text: 'Home',
            onTap: () => Navigator.pop(context),
          ),
          const SizedBox(height: 10),
          MyListTile(
            icon: Icons.person_search,
            text: 'Users',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/users');
            },
          ),
          const SizedBox(height: 10),
          MyListTile(
            icon: Icons.person_2,
            text: 'Profile',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/profile');
            },
          ),
          const SizedBox(height: 10),
          MyListTile(
            icon: Icons.settings,
            text: 'Settings',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/settings');
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
