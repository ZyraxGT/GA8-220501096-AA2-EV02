import 'package:flutter/material.dart';
import '../models/employee.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({super.key});

  @override
  _EmployeeScreenState createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  final List<Employee> employees = [];

  final nameController = TextEditingController();
  final roleController = TextEditingController();

  void addEmployee() {
    setState(() {
      employees.add(Employee(name: nameController.text, role: roleController.text));
      nameController.clear();
      roleController.clear();
    });
  }

  void deleteEmployee(int index) {
    setState(() {
      employees.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Empleados")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: nameController, decoration: InputDecoration(labelText: "Nombre")),
            TextField(controller: roleController, decoration: InputDecoration(labelText: "Cargo")),
            ElevatedButton(onPressed: addEmployee, child: Text("Agregar")),
            Expanded(
              child: ListView.builder(
                itemCount: employees.length,
                itemBuilder: (_, index) {
                  final emp = employees[index];
                  return ListTile(
                    title: Text(emp.name),
                    subtitle: Text(emp.role),
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () => deleteEmployee(index),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
