import 'package:final_project/app/domain/entities/plant.dart';

abstract class PlantRepository{
  Future<List<PlantDomain>> getAllPlants();
  Future<void> addPlant(PlantDomain plant);
}