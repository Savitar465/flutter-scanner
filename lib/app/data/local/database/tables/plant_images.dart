import 'package:drift/drift.dart';
import 'package:final_project/app/data/local/database/tables/plants.dart';

class PlantImages extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get plantId => integer().references(Plants, #id)();
  TextColumn get path => text()(); // Local path or remote URL
  DateTimeColumn get addedAt => dateTime().clientDefault(() => DateTime.now())();
}