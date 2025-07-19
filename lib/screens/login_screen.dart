import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'dashboard_screen.dart';
import '../data/user_data.dart';

class LoginScreen extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Iniciar Sesión")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: usernameController, decoration: InputDecoration(labelText: 'Usuario')),
            TextField(controller: passwordController, decoration: InputDecoration(labelText: 'Contraseña'), obscureText: true),
            ElevatedButton(
              onPressed: () async {
                bool isValid = await UserData.validateUser(
                  usernameController.text,
                  passwordController.text,
                );
                if (isValid) {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => DashboardScreen()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Credenciales inválidas")));
                }
              },
              child: Text("Iniciar Sesión"),
            ),
            TextButton(
              child: Text("¿No tienes cuenta? Regístrate"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => RegisterScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
