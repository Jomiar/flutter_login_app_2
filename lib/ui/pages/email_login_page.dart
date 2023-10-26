import 'package:flutter/material.dart';

class EmailLoginPage extends StatefulWidget {
  const EmailLoginPage({super.key});

  @override
  State<EmailLoginPage> createState() => _EmailLoginPageState();
}

class _EmailLoginPageState extends State<EmailLoginPage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _controller;
  late TextEditingController _controller2;

  @override
  void initState() {
    _controller = TextEditingController(text: '');
    _controller2 = TextEditingController(text: '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(
              "assets/EDteam.png",
              width: 150,
              height: 150,
            ),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('email'),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty || value == '') {
                          return 'El campo email es obligatorio';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _controller2,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('password'),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty || value == '') {
                          return 'El campo password es obligatorio';
                        }
                        return null;
                      },
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    super.dispose();
  }
}
