import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do/pages/loading.dart';
import 'package:to_do/pages/login.dart';
import 'package:to_do/pages/mydrawer.dart';
import 'package:to_do/pages/newtask.dart';
import 'pages/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryTextTheme: GoogleFonts.latoTextTheme()),
      initialRoute: '/home',
      routes: {
        '/': (context) => loading(),
        '/home': (context) => homepage(),
        '/new': (context) => newtask(),
        '/login': (context) => login(),
        '/drawer': (context) => mydrawer()
      },
    );
  }
}
