import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart' show ConsumerState, ConsumerStatefulWidget;
import '../../application/notifiers/plant_notifier.dart';
import '../../domain/entities/plant.dart';

class AddPlantPage extends ConsumerStatefulWidget {
  const AddPlantPage({super.key});

  @override
  ConsumerState<AddPlantPage> createState() => _AddPlantPageState();
}

class _AddPlantPageState extends ConsumerState<AddPlantPage> {
  final _formKey = GlobalKey<FormState>();
  final _commonNameController = TextEditingController();
  final _scientificNameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _imageUrlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final addPlantState = ref.watch(plantNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Agregar Planta")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _commonNameController,
                decoration: const InputDecoration(labelText: "Nombre común"),
                validator: (val) => val == null || val.isEmpty ? "Requerido" : null,
              ),
              TextFormField(
                controller: _scientificNameController,
                decoration: const InputDecoration(labelText: "Nombre científico"),
                validator: (val) => val == null || val.isEmpty ? "Requerido" : null,
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: "Descripción"),
                maxLines: 3,
              ),
              TextFormField(
                controller: _imageUrlController,
                decoration: const InputDecoration(labelText: "URL de imagen (opcional)"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: addPlantState.isLoading
                    ? null
                    : () async {
                  if (_formKey.currentState!.validate()) {
                    final plant = PlantDomain(
                      id: 0, // Ignorado por Drift (autoincrement)
                      commonName: _commonNameController.text,
                      scientificName: _scientificNameController.text,
                      description: _descriptionController.text,
                      imageUrl: _imageUrlController.text.isEmpty
                          ? null
                          : _imageUrlController.text,
                    );
                    await ref.read(plantNotifierProvider.notifier).addPlant(plant);

                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Planta guardada")),
                      );
                      // Navigator.pop(context); // o redirigir
                    }
                  }
                },
                child: addPlantState.isLoading
                    ? const CircularProgressIndicator()
                    : const Text("Guardar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
