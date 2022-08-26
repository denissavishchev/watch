import "package:flutter/material.dart";
import 'auth_widget.dart';
import 'home_page.dart';

void main() {
  runApp(const Watch());
}

class Watch extends StatelessWidget {
  const Watch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/auth': (context) => const AuthWidget(),
        '/home_page': (context) => const HomePage(),
      },
      initialRoute: '/auth',
    );
  }
}
