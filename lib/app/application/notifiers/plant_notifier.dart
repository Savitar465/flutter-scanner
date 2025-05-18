import 'package:final_project/app/domain/entities/plant.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/repositories/plant_repository.dart';
import '../providers/plant_repository_provider.dart';

class PlantNotifier extends StateNotifier<AsyncValue<void>> {
  final PlantRepository repository;

  PlantNotifier(this.repository) : super(const AsyncData(null));

  Future<void> addPlant(PlantDomain plant) async {
    state = const AsyncLoading();
    try {
      await repository.addPlant(plant);
      state = const AsyncData(null);
    } catch (e, st) {
      print('Error saving plant: $e');
      state = AsyncError(e, st);
    }
  }
}

final plantNotifierProvider = StateNotifierProvider<PlantNotifier, AsyncValue<void>>((ref) {
  final repo = ref.watch(plantRepositoryProvider);
  return PlantNotifier(repo);
});