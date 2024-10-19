import 'package:flutter/material.dart';
import 'package:replica_project2/home.dart';
import 'package:replica_project2/theme.dart';

void main() {
  runApp(MaterialApp(
    theme: primaryTheme,
    home: const Home(),
  ));
}

class SandBox extends StatefulWidget {
  const SandBox({super.key});

  @override
  State<SandBox> createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('SANDBOX'),
        centerTitle: true,
      ),
       
    );
  }
}


