import 'dart:io';

import 'package:final_project/app/data/model/plant_identification_result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/service/plant_identification_service.dart';
import '../providers/plant_id_service_provider.dart';

class PlantIdentificationNotifier
    extends StateNotifier<AsyncValue<PlantIdentificationResponse>> {
  final PlantIdService service;

  PlantIdentificationNotifier(this.service) : super(const AsyncLoading());

  Future<void> identifyPlant(File image) async {
    try {
      print('Starting identification...');
      final identification = await service.createIdentification(image);
      if (identification == null) {
        throw Exception(
            'No se pudo crear la identificación o el token es nulo.');
      }
      print('Identification created: ${identification.accessToken}');

      state = AsyncValue.data(identification);
    } catch (e, st) {
      print('Error: $e');
      state = AsyncValue.error(e, st);
    }
  }
}

final plantIdentificationProvider = StateNotifierProvider.family<
  PlantIdentificationNotifier,
  AsyncValue<PlantIdentificationResponse>,
  File
>((ref, file) {
  final service = ref.watch(plantIdServiceProvider);
  final notifier = PlantIdentificationNotifier(service);
  notifier.identifyPlant(file);
  return notifier;
});
