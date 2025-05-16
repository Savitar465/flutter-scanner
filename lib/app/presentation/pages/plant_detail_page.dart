import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/notifiers/plant_detail_notifier.dart';
import '../../domain/entities/plant.dart';

class PlantDetailPage extends ConsumerWidget {
  final int plantId;

  const PlantDetailPage({super.key, required this.plantId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncPlant = ref.watch(plantNotifierProvider(plantId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle de Planta'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go('/');
          },
        ),
      ),
      body: asyncPlant.when(
        data: (plant) => _buildContent(plant),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
      ),
    );
  }

  Widget _buildContent(PlantDomain plant) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (plant.imageUrl != null && File(plant.imageUrl!).existsSync())
            Image.file(
              File(plant.imageUrl!),
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            )
          else
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey[300],
              child: const Center(child: Text("Sin imagen")),
            ),
          const SizedBox(height: 16),
          Text(
            plant.commonName,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            plant.scientificName,
            style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 16),
          Text(
            plant.description ?? 'Sin descripción',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
