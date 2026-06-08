// lib/presentation/screens/detail/detail_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../providers/photo_providers.dart';

class DetailScreen extends ConsumerWidget {
  final String photoId;
  const DetailScreen({super.key, required this.photoId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(photoDetailProvider(photoId));
    final isFav = ref.watch(favoritesProvider.notifier).isFavorite(photoId);

    return detailAsync.when(
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (e, _) => Scaffold(
        appBar: AppBar(),
        body: Center(child: Text('Error: $e')),
      ),
      data: (photo) => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 360,
              pinned: true,
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
              actions: [
                IconButton(
                  icon: Icon(
                    isFav ? Icons.favorite : Icons.favorite_border,
                    color: Colors.white,
                  ),
                  onPressed: () =>
                      ref.read(favoritesProvider.notifier).toggle(photo.id),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Hero(
                  tag: 'photo-${photo.id}',
                  child: CachedNetworkImage(
                    imageUrl: photo.fullUrl,
                    fit: BoxFit.cover,
                    placeholder: (_, __) => Container(
                      color: photo.color != null
                          ? _hexToColor(photo.color!)
                          : Colors.grey[300],
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Fotógrafo
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage(photo.photographerAvatar),
                          radius: 22,
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              photo.photographerName,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '@${photo.photographerUsername}',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const Icon(Icons.favorite,
                                color: Colors.red, size: 18),
                            const SizedBox(width: 4),
                            Text('${photo.likes}'),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 12),

                    // Descripción
                    Text(
                      photo.description,
                      style: const TextStyle(fontSize: 15, height: 1.5),
                    ),

                    const SizedBox(height: 16),

                    // Dimensiones
                    Row(
                      children: [
                        _InfoChip(
                          icon: Icons.photo_size_select_actual,
                          label: '${photo.width} × ${photo.height}',
                        ),
                        const SizedBox(width: 8),
                        _InfoChip(
                          icon: Icons.aspect_ratio,
                          label: photo.aspectRatio > 1
                              ? 'Horizontal'
                              : photo.aspectRatio < 1
                                  ? 'Vertical'
                                  : 'Cuadrado',
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // Botón de guardar en favoritos
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () =>
                            ref.read(favoritesProvider.notifier).toggle(photo.id),
                        icon: Icon(
                            isFav ? Icons.favorite : Icons.favorite_border),
                        label: Text(
                            isFav ? 'Quitar de favoritos' : 'Guardar en favoritos'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              isFav ? Colors.red : const Color(0xFF3B82F6),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _hexToColor(String hex) {
    final h = hex.replaceAll('#', '');
    return Color(int.parse('FF$h', radix: 16));
  }
}

class _InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;
  const _InfoChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: Colors.grey[700]),
          const SizedBox(width: 4),
          Text(label,
              style: TextStyle(fontSize: 12, color: Colors.grey[700])),
        ],
      ),
    );
  }
}
