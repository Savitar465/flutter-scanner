import 'package:final_project/app/application/providers/user_repository_provider.dart';
import 'package:final_project/app/domain/entities/user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/repositories/user_repository.dart';

class UserNotifier extends StateNotifier<AsyncValue<void>> {
  final UserRepository repository;

  UserNotifier(this.repository) : super(const AsyncData(null));

  Future<void> addUser(UserDomain plant) async {
    state = const AsyncLoading();
    try {
      await repository.registerUser(plant);
      state = const AsyncData(null);
    } catch (e, st) {
      print('Error saving user: $e');
      state = AsyncError(e, st);
    }
  }
}

final userNotifierProvider =
    StateNotifierProvider<UserNotifier, AsyncValue<void>>((ref) {
      final repo = ref.watch(userRepositoryProvider);
      return UserNotifier(repo);
    });
