import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Para SystemUiOverlayStyle
import 'color_palette.dart';
import 'text_styles.dart'; // Para los estilos de texto del AppBar

// --- Tema Oscuro: Estilos de Layout ---
final AppBarTheme darkAppBarTheme = AppBarTheme(
  elevation: 0, // Sin sombra o una muy sutil si prefieres
  backgroundColor:
      darkBackgroundColor, // Usar el fondo principal para una apariencia integrada
  foregroundColor:
      darkIconColor, // Color para iconos (como el de menú) y título si no se especifica textStyle
  iconTheme: const IconThemeData(color: darkIconColor, size: 24),
  actionsIconTheme: const IconThemeData(
    color: darkIconColor,
    size: 24,
  ), // Para iconos en `actions`
  titleTextStyle: darkTextTheme.titleLarge, // Estilo para el título del AppBar
  systemOverlayStyle:
      SystemUiOverlayStyle
          .light, // Iconos de la barra de estado (batería, wifi) claros
  centerTitle: false, // Los títulos suelen ir a la izquierda en Android
);

final CardTheme darkCardTheme = CardTheme(
  elevation: 2, // Sombra sutil para dar profundidad
  color: darkSurfaceColor, // Color de fondo de la tarjeta
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12.0), // Bordes redondeados
    // side: BorderSide(color: darkBorderColor.withOpacity(0.5), width: 0.5), // Borde opcional
  ),
  margin: const EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 8,
  ), // Margen estándar para tarjetas
);

// --- Tema Claro: Estilos de Layout ---
final AppBarTheme lightAppBarTheme = AppBarTheme(
  elevation: 0.5, // Sombra muy sutil para separar del contenido
  backgroundColor: lightBackgroundColor,
  foregroundColor: lightIconColor,
  iconTheme: const IconThemeData(color: lightIconColor, size: 24),
  actionsIconTheme: const IconThemeData(color: lightIconColor, size: 24),
  titleTextStyle: lightTextTheme.titleLarge?.copyWith(color: lightTextColor),
  systemOverlayStyle:
      SystemUiOverlayStyle.dark, // Iconos de la barra de estado oscuros
  centerTitle: false,
);

final CardTheme lightCardTheme = CardTheme(
  elevation: 2,
  color: lightSurfaceColor, // Blanco para las tarjetas
  shadowColor: Colors.grey.shade200, // Sombra más clara
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12.0),
    // side: BorderSide(color: lightBorderColor, width: 0.5), // Borde opcional
  ),
  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
);
