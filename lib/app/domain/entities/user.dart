class UserDomain{
  final int? id;
  final String username;
  final String? email;
  final String? password;
  final DateTime? createdAt;

  UserDomain({
    this.id,
    required this.username,
    this.email,
    this.password,
    this.createdAt,
  });
}