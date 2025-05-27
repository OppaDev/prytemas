import 'package:flutter/material.dart';
import 'color_palette.dart';
import 'text_styles.dart';
import 'button_styles.dart';
import 'input_styles.dart';
import 'layout_styles.dart';

class AppThemes {
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Roboto', // O la fuente que hayas elegido en pubspec.yaml
    primaryColor: darkPrimaryColor,
    scaffoldBackgroundColor: darkBackgroundColor,
    
    colorScheme: const ColorScheme.dark(
      primary: darkPrimaryColor,
      secondary: darkSecondaryColor,
      background: darkBackgroundColor,
      surface: darkSurfaceColor,
      onPrimary: darkTextColor, // Texto sobre color primario
      onSecondary: darkTextColor, // Texto sobre color secundario
      onBackground: darkTextColor, // Texto sobre color de fondo
      onSurface: darkTextColor, // Texto sobre color de superficie (cards, dialogs)
      error: Colors.redAccent, // Un rojo brillante para errores
      onError: darkTextColor, // Texto sobre color de error
    ),
    
    textTheme: darkTextTheme,
    elevatedButtonTheme: darkElevatedButtonTheme,
    outlinedButtonTheme: darkOutlinedButtonTheme,
    textButtonTheme: darkTextButtonTheme,
    inputDecorationTheme: darkInputDecorationTheme,
    appBarTheme: darkAppBarTheme,
    cardTheme: darkCardTheme,
    floatingActionButtonTheme: darkFloatingActionButtonTheme,
    
    iconTheme: const IconThemeData(color: darkIconColor),
    dividerColor: darkBorderColor.withOpacity(0.5), // Divisores sutiles
    hintColor: darkHintTextColor, // Para hints generales no cubiertos por InputDecorationTheme
    
    // Configuración para Switch y otros componentes que lo usen
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return darkPrimaryColor; // Color del círculo cuando está activado
        }
        return null; // Usa el color por defecto (generalmente un gris)
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return darkPrimaryColor.withOpacity(0.5); // Color del riel cuando está activado
        }
        return null; // Usa el color por defecto
      }),
    ),
    // Puedes añadir más personalizaciones aquí (sliderTheme, chipTheme, etc.)
  );

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Roboto', 
    primaryColor: lightPrimaryColor,
    scaffoldBackgroundColor: lightBackgroundColor,

    colorScheme: ColorScheme.light(
      primary: lightPrimaryColor,
      secondary: lightSecondaryColor,
      background: lightBackgroundColor,
      surface: lightSurfaceColor,
      onPrimary: Colors.white, // Texto blanco sobre color primario
      onSecondary: lightTextColor, 
      onBackground: lightTextColor,
      onSurface: lightTextColor,
      error: Colors.red.shade700, // Un rojo más oscuro para buena legibilidad
      onError: Colors.white, // Texto blanco sobre color de error
    ),

    textTheme: lightTextTheme,
    elevatedButtonTheme: lightElevatedButtonTheme,
    outlinedButtonTheme: lightOutlinedButtonTheme,
    textButtonTheme: lightTextButtonTheme,
    inputDecorationTheme: lightInputDecorationTheme,
    appBarTheme: lightAppBarTheme,
    cardTheme: lightCardTheme,
    floatingActionButtonTheme: lightFloatingActionButtonTheme,

    iconTheme: const IconThemeData(color: lightIconColor),
    dividerColor: lightBorderColor,
    hintColor: lightHintTextColor,

    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return lightPrimaryColor;
        }
        return null; 
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return lightPrimaryColor.withOpacity(0.5);
        }
        return null;
      }),
    ),
  );
}

// Notificador simple para el cambio de tema usando ValueNotifier
class ThemeNotifier extends ValueNotifier<ThemeMode> {
  ThemeNotifier(ThemeMode value) : super(value);

  void toggleTheme() {
    value = value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }

  void setThemeMode(ThemeMode mode) {
    value = mode;
  }
}