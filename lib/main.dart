import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/screens/catagories.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark ,
    seedColor: Colors.white,
  ),
  textTheme: GoogleFonts.jetBrainsMonoTextTheme(),
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const CatagoriesScreens(),
    );
  }
}