import 'package:final_project/app/domain/entities/plant.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/repositories/plant_repository.dart';
import '../providers/plant_repository_provider.dart';

class PlantListNotifier extends StateNotifier<AsyncValue<List<PlantDomain>>> {
  final PlantRepository repository;

  PlantListNotifier(this.repository) : super(const AsyncLoading()) {
    _loadPlants();
  }

  Future<void> _loadPlants() async {
    try {
      final plants = await repository.getAllPlants();
      state = AsyncData(plants);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> refresh() async => _loadPlants();
}

final plantListProvider =
    StateNotifierProvider<PlantListNotifier, AsyncValue<List<PlantDomain>>>((
      ref,
    ) {
      final repo = ref.watch(plantRepositoryProvider);
      return PlantListNotifier(repo);
    });
