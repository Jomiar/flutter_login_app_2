import 'package:flutter/material.dart';

class RememberPassword extends StatefulWidget {
  const RememberPassword({super.key});

  @override
  State<RememberPassword> createState() => _RememberPasswordState();
}

class _RememberPasswordState extends State<RememberPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hola"),
      ),
      body: Container(),
    );
  }
}
