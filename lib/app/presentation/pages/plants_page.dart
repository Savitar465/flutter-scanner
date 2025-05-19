import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/notifiers/plant_list_notifier.dart';
import '../../application/providers/selected_image_provider.dart';
import '../../data/local/services/image_service.dart';

class PlantsPlage extends ConsumerWidget {
  const PlantsPlage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(plantListProvider.notifier).refresh();
    final plantListAsync = ref.watch(plantListProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Plantas')),
      body: plantListAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error:
            (e, _) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 48, color: Colors.red),
                  const SizedBox(height: 16),
                  Text('Error: $e'),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed:
                        () => ref.read(plantListProvider.notifier).refresh(),
                    child: const Text('Intentar de nuevo'),
                  ),
                ],
              ),
            ),
        data: (plants) {
          if (plants.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.local_florist_outlined,
                    size: 64,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 16),
                  const Text('No hay plantas guardadas.'),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => _selectImage(context, ref),
                    child: const Text('Añadir una planta'),
                  ),
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: () async {
              await ref.read(plantListProvider.notifier).refresh();
            },
            child: ListView.builder(
              itemCount: plants.length,
              itemBuilder: (context, index) {
                final plant = plants[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(8),
                    leading: SizedBox(
                      width: 60,
                      height: 60,
                      child:
                          plant.imageUrl != null
                              ? Image.file(
                                File(plant.imageUrl!),
                                fit: BoxFit.cover,
                                errorBuilder:
                                    (context, error, stackTrace) => const Icon(
                                      Icons.local_florist,
                                      size: 40,
                                    ),
                              )
                              : const Icon(Icons.local_florist, size: 40),
                    ),
                    title: Text(
                      plant.commonName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(plant.scientificName),
                    onTap: () {
                      // Navigate to plant details when tapped
                      context.go('/plant/${plant.id}');
                    },
                    trailing: const Icon(Icons.chevron_right),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _selectImage(context, ref);
          // context.go('/create-plant');
        },
        child: const Icon(Icons.camera),
      ),
    );
  }
}

void _selectImage(BuildContext context, WidgetRef ref) {
  final imageService = ref.read(imageServiceProvider);
  showModalBottomSheet(
    context: context,
    builder:
        (_) => SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text("Cámara"),
                onTap: () async {
                  final image = await imageService.pickImageFromCamera();
                  if (image != null) {
                    ref.read(selectedImageProvider.notifier).state = image;
                    context.go("/create-plant");
                  }
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text("Galería"),
                onTap: () async {
                  final image = await imageService.pickImageFromGallery();
                  if (image != null) {
                    ref.read(selectedImageProvider.notifier).state = image;
                    context.go("/create-plant");
                  }
                  // Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
  );
}
