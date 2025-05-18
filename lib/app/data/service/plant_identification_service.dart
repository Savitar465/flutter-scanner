import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../model/plant_identification_result.dart';

class PlantIdService {
  final String apiKey =
      'W9CVsBJ2C3vpjPV9amhLelBbQXcmplJSXj9frUVePkd3HkklZO'; // 🔒 guárdalo de forma segura

  final _baseUrl = 'https://plant.id/api/v3/identification';

  Future<PlantIdentificationResponse?> createIdentification(File image) async {
    final uri = Uri.parse(_baseUrl).replace(
      queryParameters: {
        'language': 'es',
        'details':
            'common_names,url,description,taxonomy,rank,gbif_id,inaturalist_id,image,synonyms,edible_parts,watering,best_light_condition,best_soil_type,common_uses,cultural_significance,toxicity,propagation_methods',
      },
    );
    final request = http.MultipartRequest('POST', uri);
    request.headers['Api-Key'] = apiKey;
    request.files.add(await http.MultipartFile.fromPath('images', image.path));
    request.fields['similar_images'] = 'true';
    final streamedResponse = await request.send();
    final response = await http.Response.fromStream(streamedResponse);

    if (response.statusCode == 201) {
      final body = json.decode(response.body);
      printLargeResponse(response.body);
      final identification = PlantIdentificationResponse.fromJson(body);
      print(identification.status);
      return identification; // ID for later retrieval
    } else {
      print("Error creating identification: ${response.body}");
      return null;
    }
  }
}
printLargeResponse(String response) {
  const chunkSize = 800; // Adjust as needed
  for (var i = 0; i < response.length; i += chunkSize) {
    print(response.substring(i, i + chunkSize > response.length ? response.length : i + chunkSize));
  }
}
