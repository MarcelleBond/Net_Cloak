import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Net Cloak',
      theme: FlexThemeData.light(scheme: FlexScheme.blueWhale, textTheme: GoogleFonts.montserratTextTheme()),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.blueWhale, textTheme: GoogleFonts.montserratTextTheme()),
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}

