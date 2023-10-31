import 'package:flutter/material.dart';
import 'package:flutter_login_app/ui/pages/remember_password.dart';

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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          //BOTON PARA IR HACIA ATRAS//
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //LOGO EDTEAM//
              Image.asset(
                "assets/EDteam.png",
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 50),
              //TEXTO AGREGA TUS CREDENCIALES//
              const Text(
                "Agrega tus credenciales",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              //FORMULARIOS//
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      //FORMULARIO EMAIL//
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
                      const SizedBox(height: 16),
                      //FORMULARIO PASSWORD//
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
                      ),
                      const SizedBox(height: 16),
                      //TEXTO OLVIDE MI CONTRASEÑA//
                      GestureDetector(
                        child: Text(
                          "Olvide mi contraseña",
                          style: TextStyle(
                              color: Colors.blue[700],
                              decoration: TextDecoration.underline),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RememberPassword()));
                        },
                      ),
                      const SizedBox(height: 16),
                      //TEXTO INICIAR SESION//
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Iniciar sesion"),
                      )
                    ],
                  ))
            ],
          ),
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
