import 'package:final_project/app/data/local/database/database_provider.dart';
import 'package:final_project/app/domain/repositories/plant_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/repositories_impl/plant_repository_impl.dart';

final plantRepositoryProvider = Provider<PlantRepository>((ref) {
  final db = ref.read(databaseProvider);
  return PlantRepositoryImpl(db);
});
