import 'package:final_project/app/domain/repositories/plant_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entities/plant.dart';
import '../providers/plant_repository_provider.dart';

class PlantDetailNotifier extends StateNotifier<AsyncValue<PlantDomain>> {
  final PlantRepository plantRepository;
  final int id;

  PlantDetailNotifier(this.plantRepository, this.id)
    : super(const AsyncLoading()) {
    _findPlant(id);
  }

  Future<void> _findPlant(int id) async {
    try {
      final plant = await plantRepository.getPlantById(id);
      state = AsyncData(plant!);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> refresh(int id) async => _findPlant(id);
}

final plantNotifierProvider = StateNotifierProvider.family<
  PlantDetailNotifier,
  AsyncValue<PlantDomain>,
  int
>((ref, id) {
  final repo = ref.watch(plantRepositoryProvider);
  return PlantDetailNotifier(repo, id);
});
