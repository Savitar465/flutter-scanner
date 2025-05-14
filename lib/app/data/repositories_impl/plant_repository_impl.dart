import 'package:final_project/app/data/local/database/database.dart';
import 'package:final_project/app/data/model/plant_model.dart';
import 'package:final_project/app/domain/entities/plant.dart';
import 'package:final_project/app/domain/repositories/plant_repository.dart';

class PlantRepositoryImpl implements PlantRepository {
  final AppDatabase db;

  PlantRepositoryImpl(this.db);

  @override
  Future<void> addPlant(PlantDomain plant) async {
    await db.into(db.plants).insert(PlantModel.toDrift(plant));
  }

  @override
  Future<List<PlantDomain>> getAllPlants() async{
    final plants = await db.select(db.plants).get();
    return plants.map(PlantModel.fromDrift).toList();
  }
}
