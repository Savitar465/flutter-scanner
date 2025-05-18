// plant_identification_result.dart

class PlantIdentificationResponse {
  final String accessToken;
  final String status;
  final ClassificationResult classification;

  PlantIdentificationResponse({
    required this.accessToken,
    required this.status,
    required this.classification,
  });

  factory PlantIdentificationResponse.fromJson(Map<String, dynamic> json) {
    return PlantIdentificationResponse(
      status: json['status'] ?? '',
      classification: ClassificationResult.fromJson(json['result']['classification']),
      accessToken: json['access_token'] ?? '',
    );
  }
}

class ClassificationResult {
  final List<Suggestion> suggestions;

  ClassificationResult({required this.suggestions});

  factory ClassificationResult.fromJson(Map<String, dynamic> json) {
    return ClassificationResult(
      suggestions: (json['suggestions'] as List)
          .map((e) => Suggestion.fromJson(e))
          .toList(),
    );
  }
}

class Suggestion {
  final String id;
  final String name;
  final double probability;
  final List<SimilarImage> similarImages;
  final PlantDetails details;

  Suggestion({
    required this.id,
    required this.name,
    required this.probability,
    required this.similarImages,
    required this.details,
  });

  factory Suggestion.fromJson(Map<String, dynamic> json) {
    return Suggestion(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      probability: (json['probability'] ?? 0).toDouble(),
      similarImages: (json['similar_images'] as List? ?? [])
          .map((e) => SimilarImage.fromJson(e))
          .toList(),
      details: PlantDetails.fromJson(json['details']),
    );
  }
}

class PlantDetails {
  final List<String> commonNames;
  final PlantTaxonomy taxonomy;
  final String url;
  final int gbifId;
  final int inaturalistId;
  final String rank;
  final PlantDescription description;
  final List<String> synonyms;
  final PlantImage image;
  final String language;
  final String entityId;
  final String bestLightCondition;
  final String bestSoilType;
  final String commonUses;
  final String culturalSignificance;
  final String toxicity;
  final String bestWatering;


  PlantDetails({
    required this.commonNames,
    required this.taxonomy,
    required this.url,
    required this.gbifId,
    required this.inaturalistId,
    required this.rank,
    required this.description,
    required this.synonyms,
    required this.image,
    required this.language,
    required this.entityId,
    required this.bestLightCondition,
    required this.bestSoilType,
    required this.commonUses,
    required this.culturalSignificance,
    required this.toxicity,
    required this.bestWatering,
  });

  factory PlantDetails.fromJson(Map<String, dynamic> json) {
    return PlantDetails(
      commonNames: json['common_names'] != null
          ? List<String>.from(json['common_names'])
          : <String>[],
      taxonomy: json['taxonomy'] != null
          ? PlantTaxonomy.fromJson(json['taxonomy'])
          : PlantTaxonomy(),
      url: json['url'] ?? '',
      gbifId: json['gbif_id'] ?? 0,
      inaturalistId: json['inaturalist_id'] ?? 0,
      rank: json['rank'] ?? '',
      description: json['description'] != null
          ? PlantDescription.fromJson(json['description'])
          : PlantDescription(value: ''),
      synonyms: json['synonyms'] != null
          ? List<String>.from(json['synonyms'])
          : <String>[],
      image: json['image'] != null
          ? PlantImage.fromJson(json['image'])
          : PlantImage(value: ''),
      language: json['language'] ?? '',
      entityId: json['entity_id'] ?? '',
      bestLightCondition: json['best_light_condition'] ?? '',
      bestSoilType: json['best_soil_type'] ?? '',
      commonUses: json['common_uses'] ?? '',
      culturalSignificance: json['cultural_significance'] ?? '',
      toxicity: json['toxicity'] ?? '',
      bestWatering: json['best_watering'] ?? '',
    );
  }
}

class SimilarImage {
  final String id;
  final String url;
  final String? licenseName;
  final String? licenseUrl;
  final String? citation;
  final double similarity;
  final String? urlSmall;

  SimilarImage({
    required this.id,
    required this.url,
    this.licenseName,
    this.licenseUrl,
    this.citation,
    required this.similarity,
    this.urlSmall,
  });

  factory SimilarImage.fromJson(Map<String, dynamic> json) {
    return SimilarImage(
      id: json['id'] ?? '',
      url: json['url'] ?? '',
      licenseName: json['license_name'],
      licenseUrl: json['license_url'],
      citation: json['citation'],
      similarity: (json['similarity'] ?? 0).toDouble(),
      urlSmall: json['url_small'],
    );
  }
}

class PlantTaxonomy {
  final String? class_;
  final String? genus;
  final String? order;
  final String? family;
  final String? phylum;
  final String? kingdom;

  PlantTaxonomy({
    this.class_,
    this.genus,
    this.order,
    this.family,
    this.phylum,
    this.kingdom,
  });

  factory PlantTaxonomy.fromJson(Map<String, dynamic> json) {
    return PlantTaxonomy(
      class_: json['class'],
      genus: json['genus'],
      order: json['order'],
      family: json['family'],
      phylum: json['phylum'],
      kingdom: json['kingdom'],
    );
  }
}

class PlantDescription {
  final String value;
  final String? citation;
  final String? licenseName;
  final String? licenseUrl;

  PlantDescription({
    required this.value,
    this.citation,
    this.licenseName,
    this.licenseUrl,
  });

  factory PlantDescription.fromJson(Map<String, dynamic> json) {
    return PlantDescription(
      value: json['value'],
      citation: json['citation'],
      licenseName: json['license_name'],
      licenseUrl: json['license_url'],
    );
  }
}

class PlantImage {
  final String value;
  final String? citation;
  final String? licenseName;
  final String? licenseUrl;

  PlantImage({
    required this.value,
    this.citation,
    this.licenseName,
    this.licenseUrl,
  });

  factory PlantImage.fromJson(Map<String, dynamic> json) {
    return PlantImage(
      value: json['value'],
      citation: json['citation'],
      licenseName: json['license_name'],
      licenseUrl: json['license_url'],
    );
  }
}