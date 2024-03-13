import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/pantallas/pantallahogar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PantallaHogar(),
    );
  }
}
