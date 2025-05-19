import 'package:final_project/app/domain/repositories/user_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/user_repository_provider.dart';

class UserLogin{
  final String email;
  final String password;
  UserLogin({required this.email, required this.password});

}

class UserLoginNotifier extends StateNotifier<AsyncValue<bool>> {
  final UserRepository repository;
  final UserLogin userLogin;

  UserLoginNotifier(this.repository, this.userLogin)
    : super(const AsyncLoading()) {
    login(userLogin.email, userLogin.password);
  }

  Future<void> login(String email, String password) async {
    try {
      final user = await repository.loginUser(email, password);
      state = AsyncData(user);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}

final userLoginNotifierProvider = StateNotifierProvider.family<
  UserLoginNotifier,
  AsyncValue<bool>,
    UserLogin
>((ref, user) {
  final repo = ref.watch(userRepositoryProvider);
  return UserLoginNotifier(repo, user);
});
