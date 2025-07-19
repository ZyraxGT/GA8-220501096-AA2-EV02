# 📱 Aplicación Flutter - Gestión de Empleados

Esta es una aplicación móvil desarrollada en Flutter como parte del proyecto formativo del SENA. Permite registrar usuarios, iniciar sesión, navegar entre pantallas y gestionar empleados (agregar, visualizar y eliminar).

---

## 🚀 Funcionalidades principales

- ✅ Registro de nuevos usuarios
- ✅ Inicio de sesión con validación de credenciales
- ✅ Menú principal de navegación
- ✅ Visualización de empleados registrados
- ✅ Agregar nuevos empleados con nombre y rol
- ✅ Eliminar empleados de la lista

---

## 🧭 Navegación de pantallas

```
[Inicio] → [Registro] → [Login] → [Dashboard] → [Gestión de Empleados]
```

---

## 🧱 Estructura de Carpetas

```
lib/
├── data/                # Datos temporales y simulación de base
│   └── user_data.dart
├── models/              # Modelos de datos
│   └── employee.dart
├── screens/             # Pantallas principales de la app
│   ├── login_screen.dart
│   ├── register_screen.dart
│   ├── dashboard_screen.dart
│   └── employee_screen.dart
└── main.dart            # Punto de entrada de la aplicación
```

---

## 🛠️ Tecnologías utilizadas

- 📱 Flutter 3+
- 💻 Dart
- 🧪 Emulador y dispositivo físico Android 10+

---

## 📸 Capturas de Pantalla

Puedes agregar capturas en la carpeta `/assets/screenshots/` si deseas mostrarlas en GitHub.

---

## 🧪 Pruebas realizadas

- ✔ Validación de credenciales en login
- ✔ Flujo de navegación entre pantallas
- ✔ Agregado y eliminación de empleados
- ✔ Compatibilidad con emulador y celular físico

---

## 📦 Generación del APK

Ejecuta este comando para generar la versión APK lista para instalar:

```bash
flutter build apk --release
```

El APK se genera en:

```
build/app/outputs/flutter-apk/app-release.apk
```

---

## 🧾 Licencia

Proyecto educativo bajo el marco del SENA. Puedes reutilizar y modificar el código con atribución.

---

## 🙌 Autor

Desarrollado por: **[Juan Angel Rangel Cediel]**  
Evidencia de producto: **GA8-220501096-AA2-EV02**
SENA ANALISIS Y DESARROLLO DE SOFTWARE 2834914
