import 'package:confido/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    title:"Confido",
    debugShowCheckedModeBanner: false,
    home: const Welcome(),
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      useMaterial3: true
    )
  ));
}