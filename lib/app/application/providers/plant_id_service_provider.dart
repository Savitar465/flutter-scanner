import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/service/plant_identification_service.dart';

final plantIdServiceProvider = Provider((ref) => PlantIdService());