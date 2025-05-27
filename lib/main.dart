import 'package:flutter/material.dart';
import 'themes/app_themes.dart';
import 'screens/theme_showcase_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Inicializa el notificador de tema.
  // Puedes empezar con el tema del sistema, claro u oscuro por defecto.
  final ThemeNotifier _themeNotifier = ThemeNotifier(ThemeMode.system);

  @override
  void dispose() {
    _themeNotifier.dispose(); // Es buena práctica liberar los notifiers
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Escucha los cambios en el ThemeNotifier para reconstruir MaterialApp
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: _themeNotifier,
      builder: (context, currentMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false, // Quita la cinta de "debug"
          title:
              'PryTemas Showcase', // Título de la app para el sistema operativo

          theme: AppThemes.lightTheme, // Tema claro definido en app_themes.dart
          darkTheme:
              AppThemes.darkTheme, // Tema oscuro definido en app_themes.dart
          themeMode: currentMode, // El modo actual (light, dark, o system)

          home: ThemeShowcasePage(
            themeNotifier: _themeNotifier,
          ), // La pantalla principal
        );
      },
    );
  }
}
