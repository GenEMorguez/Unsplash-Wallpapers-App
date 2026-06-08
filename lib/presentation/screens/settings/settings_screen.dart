// lib/presentation/screens/settings/settings_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/photo_providers.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Configuración')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              leading: Icon(
                isDark ? Icons.dark_mode : Icons.light_mode,
                color: const Color(0xFF3B82F6),
              ),
              title: const Text('Modo oscuro',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(isDark ? 'Activado' : 'Desactivado'),
              trailing: Switch(
                value: isDark,
                activeColor: const Color(0xFF3B82F6),
                onChanged: (_) => ref.read(themeProvider.notifier).toggle(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Acerca de',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 8),
                  const Text(
                    'Unsplash Wallpapers App\n'
                    'Proyecto Final - Frameworks de Desarrollo Móvil\n\n'
                    'Flutter + Riverpod + Clean Architecture\n'
                    'Imágenes: Unsplash API (unsplash.com)',
                    style: TextStyle(fontSize: 13, height: 1.6),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Icon(Icons.photo_library,
                          color: Color(0xFF3B82F6)),
                      const SizedBox(width: 8),
                      Text('v1.0.0',
                          style: TextStyle(color: Colors.grey[600])),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
