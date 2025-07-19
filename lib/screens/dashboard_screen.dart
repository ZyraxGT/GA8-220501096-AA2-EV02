import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'employee_screen.dart';
import 'login_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  Future<void> _logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('username'); // Elimina la sesión

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => LoginScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menú Principal")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Gestionar Empleados"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => EmployeeScreen()),
                );
              },
            ),
            ElevatedButton(
              child: Text("Cerrar Sesión"),
              onPressed: () => _logout(context), // Llama a _logout
            ),
          ],
        ),
      ),
    );
  }
}
