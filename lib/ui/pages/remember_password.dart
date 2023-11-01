import 'package:flutter/material.dart';

class RememberPassword extends StatefulWidget {
  const RememberPassword({super.key});

  @override
  State<RememberPassword> createState() => _RememberPasswordState();
}

class _RememberPasswordState extends State<RememberPassword> {
  late TextEditingController _email;

  @override
  void initState() {
    _email = TextEditingController(text: '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //BOTON PARA REGRESAR A LA VENTANA ANTERIOR//
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/EDteam.png",
              width: 150,
              height: 150,
            ),
            const Text(
              "Recuperar credenciales",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            Form(
                child: Form(
              child: TextFormField(
                controller: _email,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Email *'),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty || value == '') {
                    return 'El campo email es obligatorio';
                  }
                },
              ),
            )),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text("Recuperar credenciales")),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Recuerda no difundir tus credenciales de forma publica y recuerda cambiar frecuentemente tus credenciales",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }
}
