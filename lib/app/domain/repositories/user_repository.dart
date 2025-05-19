import 'package:final_project/app/domain/entities/user.dart';

abstract class UserRepository{
  Future<void> registerUser(UserDomain user);
  Future<bool> loginUser(String email, String password);
}