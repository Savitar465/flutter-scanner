import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../presentation/pages/add_plant_page.dart';
import '../presentation/pages/home.dart';

final appRouterProvider = Provider<GoRouter>((ref){
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomePage()),
      GoRoute(path: '/create-plant', builder: (context,state) => const AddPlantPage())
    ]
  );
});