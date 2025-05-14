import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/notifiers/plant_list_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final plantListAsync = ref.watch(plantListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Plantas Guardadas'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.read(plantListProvider.notifier).refresh(),
          ),
        ],
      ),
      body: plantListAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.red),
              const SizedBox(height: 16),
              Text('Error: $e'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => ref.read(plantListProvider.notifier).refresh(),
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
                  const Icon(Icons.local_florist_outlined, size: 64, color: Colors.grey),
                  const SizedBox(height: 16),
                  const Text('No hay plantas guardadas.'),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context.go('/create-plant'),
                    child: const Text('Añadir una planta'),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            itemCount: plants.length,
            itemBuilder: (context, index) {
              final plant = plants[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(8),
                  // leading: SizedBox(
                  //   width: 60,
                  //   height: 60,
                  //   child: plant.imageUrl != null
                  //       ? CachedNetworkImage(
                  //     imageUrl: plant.imageUrl!,
                  //     fit: BoxFit.cover,
                  //     placeholder: (context, url) => const Center(
                  //       child: CircularProgressIndicator(),
                  //     ),
                  //     errorWidget: (context, url, error) => const Icon(
                  //       Icons.local_florist,
                  //       size: 40,
                  //     ),
                  //   )
                  //       : const Icon(Icons.local_florist, size: 40),
                  // ),
                  title: Text(
                    plant.commonName,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(plant.scientificName),
                  onTap: () {
                    // Navigate to plant details when tapped
                    context.go('/plant-details/${plant.id}');
                  },
                  trailing: const Icon(Icons.chevron_right),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/create-plant');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
