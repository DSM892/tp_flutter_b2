import 'package:flutter/material.dart';
import 'package:tp_flutter_b2/screens/gameListScreen.dart';
import 'package:tp_flutter_b2/themes/darkTheme.dart';
import 'package:tp_flutter_b2/themes/lightTheme.dart';

void main() {
  runApp(const MonApp());
}

/// Racine de l'application : configure MaterialApp (thème, Navigator…).
/// Son context est AU-DESSUS du MaterialApp : pas de Navigator ici.
class MonApp extends StatelessWidget {
  const MonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello EPSI',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      // theme: darkTheme,
      home: GameListScreen(),
    );
  }
}