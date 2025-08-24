import 'package:flutter/material.dart';
import '../themes/app_themes.dart';
import '../themes/color_palette.dart'; // Para acceder a los colores directamente si es necesario
import '../themes/text_styles.dart';   // Para el logo

class ThemeShowcasePage extends StatelessWidget {
  final ThemeNotifier themeNotifier;

  const ThemeShowcasePage({super.key, required this.themeNotifier});

  Widget _buildSectionTitle(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, bottom: 12.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }

  Widget _buildColorChip(String name, Color color, BuildContext context) {
    return Chip(
      avatar: CircleAvatar(backgroundColor: color, radius: 8),
      label: Text(name, style: Theme.of(context).textTheme.labelSmall),
      backgroundColor: Theme.of(context).chipTheme.backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final AppThemeExtensions? themeExtensions = Theme.of(context).extension<AppThemeExtensions>();

    return Container( // Contenedor para el degradado de fondo del Scaffold
      decoration: BoxDecoration(
        gradient: themeExtensions?.backgroundGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent, // Hacer el Scaffold transparente para ver el degradado
        appBar: AppBar(
          title: buildModernLogo(isDarkMode, size: 22),
          actions: [
            IconButton(
              icon: Icon(isDarkMode ? Icons.light_mode_outlined : Icons.dark_mode_outlined),
              tooltip: 'Cambiar Tema',
              onPressed: () => themeNotifier.toggleTheme(),
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle('Paleta de Colores Personalizada', context),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _buildColorChip("DeepSkyBlue", favDeepSkyBlue, context),
                  _buildColorChip("BlueViolet", favBlueViolet, context),
                  _buildColorChip("HotPink", favHotPink, context),
                  _buildColorChip("Gold", favGold, context),
                ],
              ),
              const SizedBox(height: 16),
              Text("Color Primario del Tema:", style: textTheme.titleSmall),
              Container(height: 20, width: 100, color: Theme.of(context).colorScheme.primary),
              const SizedBox(height: 8),
              Text("Color de Acento (Notificaciones):", style: textTheme.titleSmall),
              Container(height: 20, width: 100, color: isDarkMode ? darkNotificationBackground : lightNotificationBackground),


              _buildSectionTitle('Tipografía (Fuente: Inter)', context),
              Text('Display Medium', style: textTheme.displayMedium),
              Text('Headline Large', style: textTheme.headlineLarge),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Body Large: Este es un ejemplo de cuerpo de texto grande, ideal para párrafos principales, con un interlineado agradable y moderno.',
                  style: textTheme.bodyLarge,
                ),
              ),
              Text(
                'Body Medium: Para descripciones y contenido secundario, este estilo ofrece buena legibilidad.',
                style: textTheme.bodyMedium,
              ),
               Text(
                'Label Small: PARA ETIQUETAS PEQUEÑAS O METADATOS.',
                style: textTheme.labelSmall,
              ),
              const SizedBox(height: 10),
              const Divider(),

              _buildSectionTitle('Botones Modernos', context),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.rocket_launch_outlined, size: 18),
                    label: const Text('Explorar'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Detalles'),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Center(
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.settings_outlined, size: 18),
                  label: const Text('Configuración Avanzada'),
                ),
              ),
               const SizedBox(height: 10),
              const Divider(),

              _buildSectionTitle('Campos de Entrada', context),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nombre de Usuario',
                  hintText: 'ej: usuario_moderno',
                  prefixIcon: Icon(Icons.person_outline_rounded, size: 20),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña Segura',
                  hintText: '••••••••••',
                  prefixIcon: Icon(Icons.lock_outline_rounded, size: 20),
                  suffixIcon: Icon(Icons.visibility_off_outlined, size: 20),
                  errorText: 'Error de ejemplo: muy corta',
                ),
              ),
               const SizedBox(height: 10),
              const Divider(),

              _buildSectionTitle('Tarjetas con Degradado', context),
              Container( // Contenedor para aplicar degradado a la Card
                decoration: BoxDecoration(
                  gradient: themeExtensions?.cardGradient,
                  borderRadius: BorderRadius.circular(Theme.of(context).cardTheme.shape is RoundedRectangleBorder
                      ? ((Theme.of(context).cardTheme.shape as RoundedRectangleBorder).borderRadius as BorderRadius).resolve(Directionality.of(context)).topLeft.x
                      : 16.0), // Usa el radio de la cardTheme
                  boxShadow: Theme.of(context).cardTheme.shadowColor != null ? [
                    BoxShadow(
                      color: Theme.of(context).cardTheme.shadowColor!,
                      blurRadius: Theme.of(context).cardTheme.elevation ?? 4,
                      offset: const Offset(0, 2),
                    )
                  ] : [],
                ),
                child: Card(
                  color: Colors.transparent, // Card transparente para ver el degradado del Container
                  elevation: 0, // La sombra la maneja el Container
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Tarjeta Moderna', style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                        Text(
                          'Esta tarjeta demuestra un fondo con degradado sutil y esquinas redondeadas, manteniendo la modernidad.',
                          style: textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 16),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              textStyle: textTheme.labelMedium
                            ),
                            child: const Text('Acción'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Divider(),

              _buildSectionTitle('Notificaciones (SnackBar)', context),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('¡Esta es una notificación moderna!'),
                        action: SnackBarAction(
                          label: 'ENTENDIDO',
                          onPressed: () {},
                        ),
                      ),
                    );
                  },
                  child: const Text('Mostrar Notificación'),
                ),
              ),
               const SizedBox(height: 10),
              const Divider(),

              _buildSectionTitle('Otros Componentes', context),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Interruptor (Switch)', style: textTheme.bodyLarge),
                  Switch(
                    value: isDarkMode,
                    onChanged: (value) => themeNotifier.toggleTheme(),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).colorScheme.secondary),
                    strokeWidth: 3,
                  ),
                  const SizedBox(width: 16),
                  Text("Cargando datos...", style: textTheme.bodyMedium),
                ],
              ),
              const SizedBox(height: 16),
              ClipRRect( // Para redondear el LinearProgressIndicator
                borderRadius: BorderRadius.circular(8),
                child: LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).colorScheme.primary),
                  backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                  minHeight: 8,
                ),
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8,
                children: [
                  Chip(label: Text('Etiqueta 1', style: textTheme.labelMedium), avatar: Icon(Icons.star_border_rounded, size:18)),
                  Chip(label: Text('Etiqueta Activa', style: textTheme.labelMedium?.copyWith(color: Colors.white)), avatar: Icon(Icons.check_circle_outline_rounded, size:18, color: Colors.white), backgroundColor: Theme.of(context).chipTheme.selectedColor),
                ],
              ),
              const SizedBox(height: 80), // Espacio para el FAB
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: const Icon(Icons.add_reaction_outlined),
          label: const Text('Nuevo Post'),
        ),
      ),
    );
  }
}