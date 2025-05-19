import 'package:final_project/app/data/model/user_model.dart';
import 'package:final_project/app/domain/entities/user.dart';

import '../../domain/repositories/user_repository.dart';
import '../local/database/database.dart';

class UserRepositoryImpl implements UserRepository {
  final AppDatabase db;

  UserRepositoryImpl(this.db);

  @override
  Future<bool> loginUser(String email, String password) async {
    final user =
        await (db.select(db.users)
          ..where((tbl) => tbl.email.equals(email))).getSingleOrNull();
    return user != null && user.password == password;
  }

  @override
  Future<void> registerUser(UserDomain user) async {
    await db.into(db.users).insert(UserModel.toDrift(user));
  }
}
