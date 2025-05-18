import 'package:flutter/material.dart';
import 'package:flutter_catalogo/screens/screens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // Variable para el tema oscuro/claro
  bool darkside = false;

  // Función para realizar el cambio de tema
  void cambiarTema() {
    setState(() {
      darkside = !darkside;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Deshabilitación de banner debug
      debugShowCheckedModeBanner: false,

      // Establecer las rutas de las pantallas
      initialRoute: "/home",
      routes: {
        "/home": (BuildContext context) => Home(
              onToggleTheme: cambiarTema,
              isDarkMode: darkside,
            ),
        "/textfield": (BuildContext context) => TextfieldScreen(
              onToggleTheme: cambiarTema,
              isDarkMode: darkside,
            ),
        "/floatingactionbutton": (BuildContext context) => FloatingactionbuttonScreen(
              onToggleTheme: cambiarTema,
              isDarkMode: darkside,
            ),
        "/elevatedbutton": (BuildContext context) => ElevatedbuttonScreen(
              onToggleTheme: cambiarTema,
              isDarkMode: darkside,
            ),
        "/text": (BuildContext context) => TextScreen(
              onToggleTheme: cambiarTema,
              isDarkMode: darkside,
            ),
        "/icon": (BuildContext context) => IconScreen(
              onToggleTheme: cambiarTema,
              isDarkMode: darkside,
            ),
        "/radio": (BuildContext context) => RadioScreen(
              onToggleTheme: cambiarTema,
              isDarkMode: darkside,
            ),
        "/checkbox": (BuildContext context) => CheckboxScreen(
              onToggleTheme: cambiarTema,
              isDarkMode: darkside,
            ),
        "/dropdownbutton": (BuildContext context) => DropdownbuttonScreen(
              onToggleTheme: cambiarTema,
              isDarkMode: darkside,
            ),
        "/textbutton": (BuildContext context) => TextbuttonScreen(
              onToggleTheme: cambiarTema,
              isDarkMode: darkside,
            ),
        "/image": (BuildContext context) => ImageScreen(
              onToggleTheme: cambiarTema,
              isDarkMode: darkside,
            ),
      },

      // Tema claro
      theme: ThemeData.light().copyWith(
        textTheme: const TextTheme(
          bodySmall: TextStyle(fontSize: 12, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 14, color: Colors.black),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
          headlineSmall: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          headlineLarge: TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),

      // Tema oscuro
      darkTheme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodySmall: TextStyle(fontSize: 12, color: Colors.white),
          bodyMedium: TextStyle(fontSize: 14, color: Colors.white),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.white),
          headlineSmall: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          headlineLarge: TextStyle(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),

      // Modo de tema
      themeMode: darkside ? ThemeMode.dark : ThemeMode.light,
    );
  }
}
