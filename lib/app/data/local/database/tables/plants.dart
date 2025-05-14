import 'package:drift/drift.dart';

class Plants extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get commonName => text()();

  TextColumn get scientificName => text()();

  TextColumn get description => text().nullable()();

  TextColumn get imageUrl => text().nullable()();

  DateTimeColumn get createdAt =>
      dateTime().clientDefault(() => DateTime.now())();
}
