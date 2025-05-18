class PlantDomain {
  final int? id;
  final String? customName;
  final String commonName;
  final String scientificName;
  final String? description;
  final double? precision;
  final String? imageUrl;
  final String? similarImages;
  final String? synonyms;
  final String? wiki;
  final String? bestLightCondition;
  final String? commonUses;
  final String? culturalSignificance;
  final String? toxicity;
  final String? watering;

  PlantDomain({
    this.id,
    required this.commonName,
    required this.scientificName,
    this.description,
    this.precision,
    this.imageUrl,
    this.customName,
    this.similarImages,
    this.synonyms,
    this.wiki,
    this.bestLightCondition,
    this.commonUses,
    this.culturalSignificance,
    this.toxicity,
    this.watering,
  });
}
