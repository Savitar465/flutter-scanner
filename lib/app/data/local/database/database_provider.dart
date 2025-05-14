
import 'package:final_project/app/data/local/database/database.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final databaseProvider = Provider<AppDatabase>((ref) => AppDatabase());