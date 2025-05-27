import 'package:flutter/material.dart';
import '../themes/app_themes.dart';

class ThemeShowcasePage extends StatelessWidget {
  final ThemeNotifier themeNotifier;

  const ThemeShowcasePage({Key? key, required this.themeNotifier})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Showcase'),
        actions: [
          IconButton(
            icon: Icon(
              Theme.of(context).brightness == Brightness.dark
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
            onPressed: () => themeNotifier.toggleTheme(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título principal
            Text(
              'Demostración de Temas',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 16),

            // Card de ejemplo
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ejemplo de Card',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Este es un ejemplo de texto en una tarjeta usando el tema actual.',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Botones de ejemplo
            Text('Botones', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
                const SizedBox(width: 8),
                OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
                const SizedBox(width: 8),
                TextButton(onPressed: () {}, child: const Text('Text')),
              ],
            ),
            const SizedBox(height: 16),

            // Campo de texto de ejemplo
            Text(
              'Campos de Texto',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Ejemplo de TextField',
                hintText: 'Escribe algo aquí...',
              ),
            ),
            const SizedBox(height: 16),

            // Switch de ejemplo
            Row(
              children: [
                Text(
                  'Switch de ejemplo',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Spacer(),
                Switch(value: true, onChanged: (value) {}),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
