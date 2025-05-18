import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../presentation/pages/add_plant_page.dart';
import '../presentation/pages/home.dart';
import '../presentation/pages/plant_detail_page.dart';

final appRouterProvider = Provider<GoRouter>((ref){
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomePage()),
      GoRoute(path: '/create-plant', builder: (context,state) => const AddPlantPage()),
      GoRoute(
        path: '/plant/:id',
        builder: (context, state) {
          final plantId = int.parse(state.pathParameters['id']!);
          return PlantDetailPage(plantId: plantId);
        },
      ),
    ]
  );
});