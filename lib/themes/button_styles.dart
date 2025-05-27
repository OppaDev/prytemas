import 'package:flutter/material.dart';
import 'color_palette.dart';
import 'text_styles.dart'; // Para acceder a los estilos de texto base

// --- Estilos de Botones Tema Oscuro ---
final ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: darkPrimaryColor,
    foregroundColor: darkTextColor, // Color del texto e icono dentro del botón
    textStyle: darkTextTheme.labelLarge,
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14), // Ajusta el padding
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    elevation: 2, // Sombra sutil
  ),
);

final OutlinedButtonThemeData darkOutlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    foregroundColor: darkPrimaryColor, // Color del texto, icono y borde
    side: const BorderSide(color: darkPrimaryColor, width: 1.5),
    textStyle: darkTextTheme.labelLarge?.copyWith(color: darkPrimaryColor),
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  ),
);

final TextButtonThemeData darkTextButtonTheme = TextButtonThemeData(
  style: TextButton.styleFrom(
    foregroundColor: darkPrimaryColor,
    textStyle: darkTextTheme.labelLarge?.copyWith(color: darkPrimaryColor),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  ),
);

final FloatingActionButtonThemeData darkFloatingActionButtonTheme = FloatingActionButtonThemeData(
  backgroundColor: darkPrimaryColor,
  foregroundColor: darkTextColor,
  elevation: 4,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)), // Más redondeado que botones normales
);

// Estilo para botones tipo Chip (Tema Oscuro)
ButtonStyle darkChipButtonStyle(BuildContext context) {
  return ElevatedButton.styleFrom(
    backgroundColor: darkChipBackgroundColor,
    foregroundColor: darkTextColor,
    textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Padding más ajustado
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0), // Muy redondeado
    ),
    elevation: 0, // Sin sombra
    // side: BorderSide(color: darkBorderColor.withOpacity(0.5)) // Borde sutil opcional
  );
}


// --- Estilos de Botones Tema Claro ---
final ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: lightPrimaryColor,
    foregroundColor: Colors.white, // Texto blanco sobre fondo de color primario
    textStyle: lightTextTheme.labelLarge,
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    elevation: 2,
  ),
);

final OutlinedButtonThemeData lightOutlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    foregroundColor: lightPrimaryColor,
    side: const BorderSide(color: lightPrimaryColor, width: 1.5),
    textStyle: lightTextTheme.labelLarge?.copyWith(color: lightPrimaryColor),
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  ),
);

final TextButtonThemeData lightTextButtonTheme = TextButtonThemeData(
  style: TextButton.styleFrom(
    foregroundColor: lightPrimaryColor,
    textStyle: lightTextTheme.labelLarge?.copyWith(color: lightPrimaryColor),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  ),
);

final FloatingActionButtonThemeData lightFloatingActionButtonTheme = FloatingActionButtonThemeData(
  backgroundColor: lightPrimaryColor,
  foregroundColor: Colors.white,
  elevation: 4,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
);

// Estilo para botones tipo Chip (Tema Claro)
ButtonStyle lightChipButtonStyle(BuildContext context) {
  return ElevatedButton.styleFrom(
    backgroundColor: lightChipBackgroundColor,
    foregroundColor: lightTextColor, // Texto oscuro sobre fondo claro
     textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500, color: lightTextColor),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    elevation: 0,
    // side: BorderSide(color: lightBorderColor.withOpacity(0.7)) // Borde sutil opcional
  );
}