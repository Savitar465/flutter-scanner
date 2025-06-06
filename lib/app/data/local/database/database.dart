import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:final_project/app/data/local/database/tables/plant_images.dart';
import 'package:final_project/app/data/local/database/tables/plants.dart';
import 'package:final_project/app/data/local/database/tables/plants_tags.dart';
import 'package:final_project/app/data/local/database/tables/tags.dart';
import 'package:final_project/app/data/local/database/tables/users.dart';
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

@DriftDatabase(tables: [Plants, Tags, PlantsTags, PlantImages, Users])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'my_database',
      native: const DriftNativeOptions(
        // By default, `driftDatabase` from `package:drift_flutter` stores the
        // database files in `getApplicationDocumentsDirectory()`.
        databaseDirectory: getApplicationSupportDirectory,
      ),
      // If you need web support, see https://drift.simonbinder.eu/platforms/web/
    );
  }
}
