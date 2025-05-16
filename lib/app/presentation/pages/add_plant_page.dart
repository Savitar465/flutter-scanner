import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/notifiers/plant_notifier.dart';
import '../../application/providers/selected_image_provider.dart';
import '../../data/local/services/image_service.dart';
import '../../domain/entities/plant.dart';

class AddPlantPage extends ConsumerWidget {
  AddPlantPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final _commonNameController = TextEditingController();
  final _scientificNameController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addPlantState = ref.watch(plantNotifierProvider);
    final imageFile = ref.watch(selectedImageProvider);
    final imagePath = ref.read(selectedImageProvider)?.path;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Agregar Planta"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go('/');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              GestureDetector(
                onTap: () => _selectImage(context, ref),
                child: imageFile != null
                    ? Image.file(imageFile, height: 180, fit: BoxFit.cover)
                    : Container(
                  height: 180,
                  color: Colors.grey[300],
                  child: const Center(child: Text("Toca para seleccionar imagen")),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _commonNameController,
                decoration: const InputDecoration(labelText: "Nombre común"),
                validator:
                    (val) => val == null || val.isEmpty ? "Requerido" : null,
              ),
              TextFormField(
                controller: _scientificNameController,
                decoration: const InputDecoration(
                  labelText: "Nombre científico",
                ),
                validator:
                    (val) => val == null || val.isEmpty ? "Requerido" : null,
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: "Descripción"),
                maxLines: 3,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed:
                addPlantState.isLoading
                    ? null
                    : () async {
                  if (_formKey.currentState!.validate()) {
                    final plant = PlantDomain(
                      // Ignorado por Drift (autoincrement)
                      commonName: _commonNameController.text,
                      scientificName: _scientificNameController.text,
                      description: _descriptionController.text,
                      imageUrl:
                      imagePath!.isEmpty
                          ? null
                          : imagePath,
                    );
                    await ref
                        .read(plantNotifierProvider.notifier)
                        .addPlant(plant);

                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Planta guardada"),
                        ),
                      );
                      context.go('/');
                      ref.read(selectedImageProvider.notifier).state = null;
                    }
                  }
                },
                child:
                addPlantState.isLoading
                    ? const CircularProgressIndicator()
                    : const Text("Guardar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _selectImage(BuildContext context, WidgetRef ref) {
  final imageService = ref.read(imageServiceProvider);
  showModalBottomSheet(
    context: context,
    builder: (_) => SafeArea(
      child: Wrap(
        children: [
          ListTile(
            leading: const Icon(Icons.camera_alt),
            title: const Text("Cámara"),
            onTap: () async {
              final image = await imageService.pickImageFromCamera();
              if (image != null) {
                ref.read(selectedImageProvider.notifier).state = image;
              }
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo_library),
            title: const Text("Galería"),
            onTap: () async {
              final image = await imageService.pickImageFromGallery();
              if (image != null) {
                ref.read(selectedImageProvider.notifier).state = image;
              }
              // Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
  );
}
