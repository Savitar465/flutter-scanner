
import 'package:drift/drift.dart';
import 'package:final_project/app/domain/entities/user.dart';

import '../local/database/database.dart';

class UserModel {
  static UserDomain fromDrift(User data) => UserDomain(
    id: data.id,
    username: data.username,
    password: data.password,
    email: data.email,
  );

  static UsersCompanion toDrift(UserDomain user) => UsersCompanion(
    username: Value(user.username),
    email: Value(user.email),
    password: Value(user.password)
  );
}
