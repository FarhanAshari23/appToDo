// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/pages/home.dart';
import 'package:to_do_app/pages/profile.dart';
import 'package:to_do_app/pages/settings.dart';
import 'package:to_do_app/pages/splash.dart';
import 'package:to_do_app/pages/users.dart';
import 'package:to_do_app/themes/theme_provider.dart';

void main() async {
  //init database
  await Hive.initFlutter();
  var box = await Hive.openBox('mybox');
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(), //provider tema
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: Provider.of<ThemeProvider>(context).themeData,
      routes: {
        '/': (context) => const SplashScrenn(),
        '/home': (context) => const HomePage(),
        '/settings': (context) => const SettingPage(),
        '/users': (context) => const UsersPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
