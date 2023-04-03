import 'package:intelligent/chat_screen.dart';

import 'auth.dart';
import 'package:intelligent/home_page.dart';
import 'package:intelligent/login_register_page.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ChatScreen();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
