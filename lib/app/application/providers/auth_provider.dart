import 'package:final_project/app/application/providers/user_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/repositories/user_repository.dart';

class AuthNotifier extends StateNotifier<bool> {
  final UserRepository repository;

  AuthNotifier(this.repository) : super(false); // Not logged in by default

  Future<void> login(String email, String password) async {
    final loginState = await repository.loginUser(email, password);

    if (loginState) {
      state = true; // Login successful
    } else {
      throw Exception("Login failed");
    }
  }

  void logout() {
    state = false;
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, bool>((ref) {
  final repo = ref.watch(userRepositoryProvider);
  return AuthNotifier(repo);
});
