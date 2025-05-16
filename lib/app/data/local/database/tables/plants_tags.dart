import 'package:drift/drift.dart';
import 'package:final_project/app/data/local/database/tables/plants.dart';
import 'package:final_project/app/data/local/database/tables/tags.dart';

class PlantsTags extends Table {
  IntColumn get plantId => integer().references(Plants, #id)();
  IntColumn get tagId => integer().references(Tags, #id)();
  @override
  Set<Column> get primaryKey => {plantId, tagId};
}