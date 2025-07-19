import 'package:flutter/material.dart';
import 'login_screen.dart';
import '../data/user_data.dart';

class RegisterScreen extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registro")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: usernameController, decoration: InputDecoration(labelText: 'Usuario')),
            TextField(controller: passwordController, decoration: InputDecoration(labelText: 'Contraseña'), obscureText: true),
            ElevatedButton(
              onPressed: () async {
                await UserData.saveUser(
                  usernameController.text,
                  passwordController.text,
                );
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Usuario registrado")));
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()));
              },
              child: Text("Registrarse"),
            ),
          ],
        ),
      ),
    );
  }
}
