import 'dart:io';

import 'package:final_project/app/application/providers/selected_image_provider.dart';
import 'package:final_project/app/domain/entities/plant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/notifiers/plant_identification_notifier.dart';
import '../../application/notifiers/plant_notifier.dart';
import '../../data/model/plant_identification_result.dart';

class AddPlantPage extends ConsumerWidget {
  const AddPlantPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageFile = ref.watch(selectedImageProvider);
    final plantIdentificationState = ref.watch(
      plantIdentificationProvider(imageFile!),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (plantIdentificationState is AsyncLoading == false &&
          plantIdentificationState is AsyncError == false &&
          plantIdentificationState is! AsyncData) {
        ref
            .read(plantIdentificationProvider(imageFile).notifier)
            .identifyPlant(imageFile);
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Plant Analysis'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go('/');
          },
        ),
      ),
      body:
          imageFile == null
              ? const Center(child: Text('No image selected.'))
              : plantIdentificationState.when(
                data:
                    (result) =>
                        _buildResultContent(result, context, ref, imageFile),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, _) => Center(child: Text('Error: $error')),
              ),
    );
  }

  Widget _buildResultContent(
    PlantIdentificationResponse result,
    BuildContext context,
    WidgetRef ref,
    File imageFile,
  ) {
    final suggestion = result.classification.suggestions[0];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.file(File(imageFile.path), fit: BoxFit.cover),
              ),
            ),
          ),
          Text(
            'Nombre: ${suggestion.name}',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Icon(
            Icons.circle,
            color: suggestion.probability > 0.8 ? Colors.green : Colors.yellow,
            size: 32,
          ),
          Text(
            'Probability: ${(suggestion.probability * 100).toStringAsFixed(2)}%',
          ),
          const SizedBox(height: 10),

          SizedBox(
            height: 200,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: suggestion.similarImages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      suggestion.similarImages[index].url,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.save),
                  label: const Text('Save'),
                  onPressed: () async {
                    final plant = PlantDomain(
                      commonName: suggestion.details.commonNames.join(","),
                      scientificName: suggestion.name,
                      description: suggestion.details.description.value,
                      precision: suggestion.probability,
                      imageUrl: imageFile.path,
                      similarImages: suggestion.similarImages.map((e) => e.url).join(","),
                      synonyms: suggestion.details.synonyms.join(","),
                      wiki: suggestion.details.url,
                      bestLightCondition:
                          suggestion.details.bestLightCondition,
                      commonUses: suggestion.details.commonUses,
                      culturalSignificance:
                          suggestion.details.culturalSignificance,
                      toxicity: suggestion.details.toxicity,
                    );
                    await ref.read(plantNotifierProvider.notifier).addPlant(plant);
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Planta guardada")),
                      );
                      context.go('/');
                    }
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: OutlinedButton.icon(
                  icon: const Icon(Icons.cancel),
                  label: const Text('Cancel'),
                  onPressed: () {
                    context.go('/');
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
