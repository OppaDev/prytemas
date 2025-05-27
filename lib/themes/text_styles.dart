import 'package:flutter/material.dart';
import 'color_palette.dart'; // Importa tu paleta de colores

// --- Estilos de Texto Tema Oscuro ---
const TextTheme darkTextTheme = TextTheme(
  displayLarge: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold, color: darkTextColor, letterSpacing: -1.5),
  displayMedium: TextStyle(fontSize: 38.0, fontWeight: FontWeight.bold, color: darkTextColor, letterSpacing: -1.0),
  headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: darkTextColor), // Ej: "THE FUTURE."
  headlineMedium: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600, color: darkTextColor), // Ej: "Join to building..."
  headlineSmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: darkTextColor),
  titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: darkTextColor), // Para títulos de AppBar, Cards
  titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: darkTextColor),
  bodyLarge: TextStyle(fontSize: 16.0, color: darkTextColor), // Cuerpo de texto principal
  bodyMedium: TextStyle(fontSize: 14.0, color: darkSecondaryTextColor), // Cuerpo de texto secundario, descripciones
  labelLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: darkTextColor), // Para texto en botones
  bodySmall: TextStyle(fontSize: 12.0, color: darkSecondaryTextColor), // Para captions, enlaces sociales
);

// --- Estilos de Texto Tema Claro ---
const TextTheme lightTextTheme = TextTheme(
  displayLarge: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold, color: lightTextColor, letterSpacing: -1.5),
  displayMedium: TextStyle(fontSize: 38.0, fontWeight: FontWeight.bold, color: lightTextColor, letterSpacing: -1.0),
  headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: lightTextColor), // Ej: "The most trusted..."
  headlineMedium: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600, color: lightTextColor),
  headlineSmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: lightTextColor),
  titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: lightTextColor),
  titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: lightTextColor),
  bodyLarge: TextStyle(fontSize: 16.0, color: lightTextColor),
  bodyMedium: TextStyle(fontSize: 14.0, color: lightSecondaryTextColor),
  labelLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white), // Texto en botones primarios (fondo oscuro)
  bodySmall: TextStyle(fontSize: 12.0, color: lightSecondaryTextColor),
);

// Helper para construir el widget del logo con el estilo TM
Widget buildLogo(bool isDarkMode) {
  // Usar una fuente base común para consistencia, si tienes una definida.
  // Si no, el sistema elegirá.
  String? fontFamily = (isDarkMode ? darkTextTheme.headlineLarge?.fontFamily : lightTextTheme.headlineLarge?.fontFamily);

  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        fontFamily: fontFamily,
      ),
      children: [
        TextSpan(
          text: "ROIIADE",
          style: TextStyle(color: isDarkMode ? darkTextColor : lightPrimaryColor),
        ),
        TextSpan(
          text: "™",
          style: TextStyle(
            color: isDarkMode ? darkPrimaryColor : lightSecondaryColor, // TM con el color primario del tema
            fontSize: 12, // El ™ suele ser más pequeño
            fontFeatures: const [FontFeature.superscripts()],
          ),
        ),
      ],
    ),
  );
}