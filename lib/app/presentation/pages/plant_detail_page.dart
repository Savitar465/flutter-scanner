import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

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
        data: (plant) => _buildContent(plant,ref),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
      ),
    );
  }

  Widget _buildContent(PlantDomain plant, WidgetRef ref) {
    final showAllSynonyms = ref.watch(showAllSynonymsProvider);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display plant image
          if (plant.imageUrl != null && File(plant.imageUrl!).existsSync())
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.file(
                File(plant.imageUrl!),
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            )
          else
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  "No Image Available",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ),
            ),
          const SizedBox(height: 16),

          // Display plant name
          Text(
            plant.commonName.split(",").first,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            plant.scientificName,
            style: const TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.italic,
              color: Colors.black54,
            ),
          ),
          const Divider(height: 32, thickness: 1),

          // Display description
          Text(
            plant.description ?? 'No description available',
            style: const TextStyle(fontSize: 16, height: 1.5),
          ),
          const SizedBox(height: 16),

          // Display synonyms
          if (plant.synonyms != null)
            _buildSynonymsSection(
              title: 'Synonyms',
              synonyms: plant.synonyms!,
              showAll: showAllSynonyms,
              onToggleShowAll: () {
                ref.read(showAllSynonymsProvider.notifier).state =
                    !showAllSynonyms;
              },
            ),

          // Display common uses
          if (plant.commonUses != null)
            _buildSection('Common Uses', plant.commonUses!),

          // Display similar images in a carousel
          if (plant.similarImages != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                const Text(
                  'Similar Images:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: plant.similarImages!.split(',').length,
                    itemBuilder: (context, index) {
                      final imageUrl = plant.similarImages!.split(',')[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(imageUrl, fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),

          // Display additional details
          if (plant.wiki != null) _buildSection('Wiki', plant.wiki!, isUrl: true),
          if (plant.bestLightCondition != null)
            _buildSection('Best Light Condition', plant.bestLightCondition!),
          if (plant.culturalSignificance != null)
            _buildSection('Cultural Significance', plant.culturalSignificance!),
          if (plant.toxicity != null)
            _buildSection('Toxicity', plant.toxicity!),
          if (plant.watering != null)
            _buildSection('Watering', plant.watering!),
        ],
      ),
    );
  }

  Widget _buildSection(String title, String content, {bool isUrl = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          isUrl
              ? GestureDetector(
            onTap: () async {
              try {
                final uri = Uri.parse(content);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri, mode: LaunchMode.externalApplication);
                } else {
                  throw 'Could not launch $content';
                }
              } catch (e) {
                debugPrint('Error launching URL: $e');
              }
            },
            child: Text(
              content,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          )
              : Text(
            content,
            style: const TextStyle(fontSize: 16, height: 1.5),
          ),
        ],
      ),
    );
  }

  Widget _buildSynonymsSection({
    required String title,
    required String synonyms,
    required bool showAll,
    required VoidCallback onToggleShowAll,
  }) {
    final List<String> synonymList = synonyms.split(',');
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children:
                (showAll ? synonymList : synonymList.take(5))
                    .map(
                      (synonym) => Chip(
                        label: Text(synonym.trim()),
                        backgroundColor: Colors.blueAccent[100],
                      ),
                    )
                    .toList(),
          ),
          if (synonymList.length > 5)
            TextButton(
              onPressed: onToggleShowAll,
              child: Text(showAll ? 'Show Less' : 'Show More'),
            ),
        ],
      ),
    );
  }
}

final showAllSynonymsProvider = StateProvider<bool>((ref) => false);
