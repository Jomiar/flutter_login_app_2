import 'package:flutter/material.dart';
import 'package:flutter_login_app/ui/pages/email_login_page.dart';
import 'package:flutter_login_app/ui/pages/register_page.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity, //Hace que ocupe todo el ancho de la pantalla
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/EDteam.png",
              width: 150,
              height: 150,
            ),
            Column(
              children: [
                SocialLoginButton(
                    buttonType: SocialLoginButtonType.google, onPressed: () {}),
                const SizedBox(
                  height: 16,
                ),
                SocialLoginButton(
                    buttonType: SocialLoginButtonType.facebook,
                    onPressed: () {}),
                const SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  child: Text(
                    "Iniciar sesion con correo",
                    style: TextStyle(
                        color: Colors.blue[700],
                        decoration: TextDecoration.underline),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EmailLoginPage()));
                  },
                ),
                const Text("o"),
                GestureDetector(
                  child: Text(
                    "Crear cuenta",
                    style: TextStyle(
                        color: Colors.blue[700],
                        decoration: TextDecoration.underline),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
