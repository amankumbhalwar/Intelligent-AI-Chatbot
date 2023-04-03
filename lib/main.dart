import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intelligent/home_page.dart';
import 'package:intelligent/utils/routes.dart';
import 'package:intelligent/widget_tree.dart';
import 'package:velocity_x/velocity_x.dart';

import 'chat_screen.dart';
import 'login_register_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.white),
          iconTheme: IconThemeData(color: Colors.black),
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.lateefTextTheme()),
      debugShowCheckedModeBanner: false,

      darkTheme: ThemeData(primarySwatch: Colors.red),
      //brightness: Brightness.dark,

      home: const WidgetTree(),
    );
  }
}
