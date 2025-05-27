import 'package:flutter/material.dart';
import 'color_palette.dart';
import 'text_styles.dart'; // Para los estilos de texto de hint/label

// --- Tema Oscuro: InputDecorationTheme ---
final InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: darkSurfaceColor.withOpacity(0.7), // Un poco de transparencia o un color ligeramente diferente
  hintStyle: darkTextTheme.bodyMedium?.copyWith(color: darkHintTextColor),
  labelStyle: darkTextTheme.bodyMedium?.copyWith(color: darkSecondaryTextColor), // Estilo para el label cuando está arriba
  errorStyle: darkTextTheme.bodySmall?.copyWith(color: Colors.redAccent[100]), // Color de error
  
  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0), // Padding interno

  border: OutlineInputBorder( // Borde por defecto
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(color: darkBorderColor.withOpacity(0.7)),
  ),
  enabledBorder: OutlineInputBorder( // Borde cuando el campo está habilitado pero no enfocado
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(color: darkBorderColor.withOpacity(0.7)),
  ),
  focusedBorder: OutlineInputBorder( // Borde cuando el campo está enfocado
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(color: darkPrimaryColor, width: 1.5),
  ),
  errorBorder: OutlineInputBorder( // Borde cuando hay un error
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(color: Colors.redAccent[100]!, width: 1.5),
  ),
  focusedErrorBorder: OutlineInputBorder( // Borde cuando hay un error y está enfocado
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(color: Colors.redAccent[100]!, width: 1.5),
  ),
);

// --- Tema Claro: InputDecorationTheme ---
final InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: lightSurfaceColor, // Podría ser lightBackgroundColor o un gris muy sutil
  hintStyle: lightTextTheme.bodyMedium?.copyWith(color: lightHintTextColor),
  labelStyle: lightTextTheme.bodyMedium?.copyWith(color: lightSecondaryTextColor),
  errorStyle: lightTextTheme.bodySmall?.copyWith(color: Colors.red.shade700),
  
  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),

  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(color: lightBorderColor),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(color: lightBorderColor),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(color: lightPrimaryColor, width: 1.5),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(color: Colors.red.shade700, width: 1.5),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(color: Colors.red.shade700, width: 1.5),
  ),
);