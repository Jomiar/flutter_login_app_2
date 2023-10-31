import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _EmailLoginPageState();
}

class _EmailLoginPageState extends State<RegisterPage> {
  // Variable pra controlar los datos del formalrio//
  final _formRegisterKey = GlobalKey<FormState>();

  //Controladores//
  late TextEditingController _nombres;
  late TextEditingController _paterno;
  late TextEditingController _materno;
  late TextEditingController _email;
  late TextEditingController _password;
  late TextEditingController _confirmationPassword;
  late TextEditingController _nacimiento;
  late TextEditingController _empresa;

  //Inicializador del controlador//
  @override
  void initState() {
    _nombres = TextEditingController(text: '');
    _paterno = TextEditingController(text: '');
    _materno = TextEditingController(text: '');
    _email = TextEditingController(text: '');
    _password = TextEditingController(text: '');
    _confirmationPassword = TextEditingController(text: '');
    _nacimiento = TextEditingController(text: '');
    _empresa = TextEditingController(text: '');
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
        width: double.infinity, //Hace que ocupe todo el ancho de la pantalla
        height: double.infinity, //Hace que ocupe todo el ancho de la pantalla
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/EDteam.png",
                width: 150,
                height: 150,
              ),
              const Text(
                "Crea una cuenta",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              Form(
                key: _formRegisterKey,
                child: Column(
                  children: [
                    //FORMULARIO DE NOMBRES//
                    TextFormField(
                      controller: _nombres,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                        label: Text('nombres *'),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty || value == '') {
                          return 'El campo email es obligatorio';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Flexible(
                          //FORMULARIO DE AP. PATERNO//
                          child: TextFormField(
                            controller: _paterno,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(),
                              label: Text('Ap. paterno *'),
                            ),
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value == '') {
                                return 'El campo apellido paterno es obligatorio';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Flexible(
                          //FORMULARIO DE AP. MATERNO//
                          child: TextFormField(
                            controller: _materno,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(),
                              label: Text('Ap. materno'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: _email,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('email *'),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty || value == '') {
                          return 'El campo email es obligatorio';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: _password,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Password *'),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty || value == '') {
                          return 'El campo password es obligatorio';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: _confirmationPassword,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Confirmacion del Password *'),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty || value == '') {
                          return 'El campo de confirmationPassword es obligatorio';
                        }
                        if (value != _password.value.text) {
                          return 'Password y Confirmacion del password no son iguales';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: TextFormField(
                            controller: _nacimiento,
                            decoration: const InputDecoration(
                              suffixIcon: Icon(Icons.date_range),
                              border: OutlineInputBorder(),
                              label: Text('nacimiento'),
                            ),
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value == '') {
                                return 'El campo nacimiento es obligatorio';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Flexible(
                          child: TextFormField(
                            controller: _empresa,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text('empresa'),
                            ),
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value == '') {
                                return 'El campo empresa es obligatorio';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    //TEXTO INICIAR SESION//
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Crear cuenta"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nombres.dispose();
    _paterno.dispose();
    _materno.dispose();
    _email.dispose();
    _password.dispose();
    _confirmationPassword.dispose();
    _nacimiento.dispose();
    _empresa.dispose();

    super.dispose();
  }
}
