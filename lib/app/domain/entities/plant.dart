class PlantDomain {
  final int id;
  final String commonName;
  final String scientificName;
  final String? description;
  final String? imageUrl;

  PlantDomain({required this.id, required this.commonName, required this.scientificName, this.description, this.imageUrl});
}