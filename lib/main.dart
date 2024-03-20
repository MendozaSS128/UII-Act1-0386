import 'package:flutter/material.dart';
import 'package:mendoza0386/pantallas0386/panel0386/widgets0386/panel_pantalla0386.dart';

void main() => runApp(const MiAppSpotify0386());

class MiAppSpotify0386 extends StatelessWidget {
  const MiAppSpotify0386({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ("Spotify Mendoza0386"),
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
          useMaterial3: true),
      home: const PanelPantalla0386(),
    );
  }
}
