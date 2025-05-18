import 'package:drift/drift.dart';

class Plants extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get customName => text().nullable()();

  TextColumn get commonName => text()();

  TextColumn get scientificName => text()();

  RealColumn get precision => real().nullable()();

  TextColumn get description => text().nullable()();

  TextColumn get imageUrl => text().nullable()();

  TextColumn get similarImages => text().nullable()();

  TextColumn get synonyms => text().nullable()();

  TextColumn get wiki => text().nullable()();

  TextColumn get bestLightCondition => text().nullable()();

  TextColumn get commonUses => text().nullable()();

  TextColumn get culturalSignificance => text().nullable()();

  TextColumn get toxicity => text().nullable()();

  TextColumn get watering => text().nullable()();

  DateTimeColumn get createdAt =>
      dateTime().clientDefault(() => DateTime.now())();
}
