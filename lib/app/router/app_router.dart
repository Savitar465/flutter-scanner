import 'package:final_project/app/presentation/pages/user_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../application/providers/auth_provider.dart';
import '../presentation/pages/add_plant_page.dart';
import '../presentation/pages/home.dart';
import '../presentation/pages/login_page.dart';
import '../presentation/pages/plant_detail_page.dart';
import '../presentation/pages/register_page.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final isLoggedIn = ref.watch(authProvider);
  return GoRouter(
    initialLocation: '/',
    refreshListenable: GoRouterRefreshNotifier(ref),
    redirect: (context, state) {
      final goingToLogin =
          state.uri.toString() == '/login' || state.uri.toString() == '/register';

      if (!isLoggedIn && !goingToLogin) {
        return '/login';
      }

      if (isLoggedIn && goingToLogin) {
        return '/home';
      }

      return null;
    },
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomePage()),
      GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
      GoRoute(path: '/register', builder: (_, __) => const RegisterPage()),
      GoRoute(
        path: '/create-plant',
        builder: (context, state) => const AddPlantPage(),
      ),
      GoRoute(
        path: '/plant/:id',
        builder: (context, state) {
          final plantId = int.parse(state.pathParameters['id']!);
          return PlantDetailPage(plantId: plantId);
        },
      ),
      GoRoute(path: '/user', builder: (context, state) => const UserInfoPage()),
    ],
  );
});

class GoRouterRefreshNotifier extends ChangeNotifier {
  GoRouterRefreshNotifier(this.ref) {
    ref.listen<bool>(
      authProvider,
          (_, __) => notifyListeners(),
    );
  }

  final Ref ref;
}