import 'package:drift/drift.dart';

import '../../domain/entities/plant.dart' show PlantDomain;
import '../local/database/database.dart' show Plant, PlantsCompanion;

class PlantModel {
  static PlantDomain fromDrift(Plant data) => PlantDomain(
    id: data.id,
    commonName: data.commonName,
    scientificName: data.scientificName,
    description: data.description,
    precision: data.precision,
    imageUrl: data.imageUrl,
    customName: data.customName,
    similarImages: data.similarImages,
    synonyms: data.synonyms,
    wiki: data.wiki,
    bestLightCondition: data.bestLightCondition,
    commonUses: data.commonUses,
    culturalSignificance: data.culturalSignificance,
    toxicity: data.toxicity,
    watering: data.watering,
  );

  static PlantsCompanion toDrift(PlantDomain plant) => PlantsCompanion(
    commonName: Value(plant.commonName),
    scientificName: Value(plant.scientificName),
    description: Value(plant.description),
    precision: Value(plant.precision),
    imageUrl: Value(plant.imageUrl),
    customName: Value(plant.customName),
    similarImages: Value(plant.similarImages),
    synonyms: Value(plant.synonyms),
    wiki: Value(plant.wiki),
    bestLightCondition: Value(plant.bestLightCondition),
    commonUses: Value(plant.commonUses),
    culturalSignificance: Value(plant.culturalSignificance),
    toxicity: Value(plant.toxicity),
    watering: Value(plant.watering),
  );
}
