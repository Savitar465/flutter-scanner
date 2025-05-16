import 'package:drift/drift.dart';

import '../../domain/entities/plant.dart' show PlantDomain;
import '../local/database/database.dart' show Plant, PlantsCompanion;

class PlantModel {
  static PlantDomain fromDrift(Plant data) => PlantDomain(
    id: data.id,
    commonName: data.commonName,
    scientificName: data.scientificName,
    description: data.description,
    imageUrl: data.imageUrl,
  );

  static PlantsCompanion toDrift(PlantDomain plant) => PlantsCompanion(
    commonName: Value(plant.commonName),
    scientificName: Value(plant.scientificName),
    description: Value(plant.description),
    imageUrl: Value(plant.imageUrl),
  );
}
