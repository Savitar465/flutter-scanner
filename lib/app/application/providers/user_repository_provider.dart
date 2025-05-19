import 'package:final_project/app/data/repositories_impl/user_repository_impl.dart';
import 'package:final_project/app/domain/repositories/user_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/local/database/database_provider.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  final db = ref.read(databaseProvider);
  return UserRepositoryImpl(db);
});
