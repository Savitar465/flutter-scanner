// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $PlantsTable extends Plants with TableInfo<$PlantsTable, Plant> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PlantsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _commonNameMeta = const VerificationMeta(
    'commonName',
  );
  @override
  late final GeneratedColumn<String> commonName = GeneratedColumn<String>(
    'common_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _scientificNameMeta = const VerificationMeta(
    'scientificName',
  );
  @override
  late final GeneratedColumn<String> scientificName = GeneratedColumn<String>(
    'scientific_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    clientDefault: () => DateTime.now(),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    commonName,
    scientificName,
    description,
    imageUrl,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'plants';
  @override
  VerificationContext validateIntegrity(
    Insertable<Plant> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('common_name')) {
      context.handle(
        _commonNameMeta,
        commonName.isAcceptableOrUnknown(data['common_name']!, _commonNameMeta),
      );
    } else if (isInserting) {
      context.missing(_commonNameMeta);
    }
    if (data.containsKey('scientific_name')) {
      context.handle(
        _scientificNameMeta,
        scientificName.isAcceptableOrUnknown(
          data['scientific_name']!,
          _scientificNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_scientificNameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Plant map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Plant(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      commonName:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}common_name'],
          )!,
      scientificName:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}scientific_name'],
          )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      ),
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
    );
  }

  @override
  $PlantsTable createAlias(String alias) {
    return $PlantsTable(attachedDatabase, alias);
  }
}

class Plant extends DataClass implements Insertable<Plant> {
  final int id;
  final String commonName;
  final String scientificName;
  final String? description;
  final String? imageUrl;
  final DateTime createdAt;
  const Plant({
    required this.id,
    required this.commonName,
    required this.scientificName,
    this.description,
    this.imageUrl,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['common_name'] = Variable<String>(commonName);
    map['scientific_name'] = Variable<String>(scientificName);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  PlantsCompanion toCompanion(bool nullToAbsent) {
    return PlantsCompanion(
      id: Value(id),
      commonName: Value(commonName),
      scientificName: Value(scientificName),
      description:
          description == null && nullToAbsent
              ? const Value.absent()
              : Value(description),
      imageUrl:
          imageUrl == null && nullToAbsent
              ? const Value.absent()
              : Value(imageUrl),
      createdAt: Value(createdAt),
    );
  }

  factory Plant.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Plant(
      id: serializer.fromJson<int>(json['id']),
      commonName: serializer.fromJson<String>(json['commonName']),
      scientificName: serializer.fromJson<String>(json['scientificName']),
      description: serializer.fromJson<String?>(json['description']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'commonName': serializer.toJson<String>(commonName),
      'scientificName': serializer.toJson<String>(scientificName),
      'description': serializer.toJson<String?>(description),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Plant copyWith({
    int? id,
    String? commonName,
    String? scientificName,
    Value<String?> description = const Value.absent(),
    Value<String?> imageUrl = const Value.absent(),
    DateTime? createdAt,
  }) => Plant(
    id: id ?? this.id,
    commonName: commonName ?? this.commonName,
    scientificName: scientificName ?? this.scientificName,
    description: description.present ? description.value : this.description,
    imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
    createdAt: createdAt ?? this.createdAt,
  );
  Plant copyWithCompanion(PlantsCompanion data) {
    return Plant(
      id: data.id.present ? data.id.value : this.id,
      commonName:
          data.commonName.present ? data.commonName.value : this.commonName,
      scientificName:
          data.scientificName.present
              ? data.scientificName.value
              : this.scientificName,
      description:
          data.description.present ? data.description.value : this.description,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Plant(')
          ..write('id: $id, ')
          ..write('commonName: $commonName, ')
          ..write('scientificName: $scientificName, ')
          ..write('description: $description, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    commonName,
    scientificName,
    description,
    imageUrl,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Plant &&
          other.id == this.id &&
          other.commonName == this.commonName &&
          other.scientificName == this.scientificName &&
          other.description == this.description &&
          other.imageUrl == this.imageUrl &&
          other.createdAt == this.createdAt);
}

class PlantsCompanion extends UpdateCompanion<Plant> {
  final Value<int> id;
  final Value<String> commonName;
  final Value<String> scientificName;
  final Value<String?> description;
  final Value<String?> imageUrl;
  final Value<DateTime> createdAt;
  const PlantsCompanion({
    this.id = const Value.absent(),
    this.commonName = const Value.absent(),
    this.scientificName = const Value.absent(),
    this.description = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  PlantsCompanion.insert({
    this.id = const Value.absent(),
    required String commonName,
    required String scientificName,
    this.description = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : commonName = Value(commonName),
       scientificName = Value(scientificName);
  static Insertable<Plant> custom({
    Expression<int>? id,
    Expression<String>? commonName,
    Expression<String>? scientificName,
    Expression<String>? description,
    Expression<String>? imageUrl,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (commonName != null) 'common_name': commonName,
      if (scientificName != null) 'scientific_name': scientificName,
      if (description != null) 'description': description,
      if (imageUrl != null) 'image_url': imageUrl,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  PlantsCompanion copyWith({
    Value<int>? id,
    Value<String>? commonName,
    Value<String>? scientificName,
    Value<String?>? description,
    Value<String?>? imageUrl,
    Value<DateTime>? createdAt,
  }) {
    return PlantsCompanion(
      id: id ?? this.id,
      commonName: commonName ?? this.commonName,
      scientificName: scientificName ?? this.scientificName,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (commonName.present) {
      map['common_name'] = Variable<String>(commonName.value);
    }
    if (scientificName.present) {
      map['scientific_name'] = Variable<String>(scientificName.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlantsCompanion(')
          ..write('id: $id, ')
          ..write('commonName: $commonName, ')
          ..write('scientificName: $scientificName, ')
          ..write('description: $description, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PlantsTable plants = $PlantsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [plants];
}

typedef $$PlantsTableCreateCompanionBuilder =
    PlantsCompanion Function({
      Value<int> id,
      required String commonName,
      required String scientificName,
      Value<String?> description,
      Value<String?> imageUrl,
      Value<DateTime> createdAt,
    });
typedef $$PlantsTableUpdateCompanionBuilder =
    PlantsCompanion Function({
      Value<int> id,
      Value<String> commonName,
      Value<String> scientificName,
      Value<String?> description,
      Value<String?> imageUrl,
      Value<DateTime> createdAt,
    });

class $$PlantsTableFilterComposer
    extends Composer<_$AppDatabase, $PlantsTable> {
  $$PlantsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get commonName => $composableBuilder(
    column: $table.commonName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get scientificName => $composableBuilder(
    column: $table.scientificName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PlantsTableOrderingComposer
    extends Composer<_$AppDatabase, $PlantsTable> {
  $$PlantsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get commonName => $composableBuilder(
    column: $table.commonName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get scientificName => $composableBuilder(
    column: $table.scientificName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PlantsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PlantsTable> {
  $$PlantsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get commonName => $composableBuilder(
    column: $table.commonName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get scientificName => $composableBuilder(
    column: $table.scientificName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$PlantsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PlantsTable,
          Plant,
          $$PlantsTableFilterComposer,
          $$PlantsTableOrderingComposer,
          $$PlantsTableAnnotationComposer,
          $$PlantsTableCreateCompanionBuilder,
          $$PlantsTableUpdateCompanionBuilder,
          (Plant, BaseReferences<_$AppDatabase, $PlantsTable, Plant>),
          Plant,
          PrefetchHooks Function()
        > {
  $$PlantsTableTableManager(_$AppDatabase db, $PlantsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$PlantsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$PlantsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$PlantsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> commonName = const Value.absent(),
                Value<String> scientificName = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> imageUrl = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => PlantsCompanion(
                id: id,
                commonName: commonName,
                scientificName: scientificName,
                description: description,
                imageUrl: imageUrl,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String commonName,
                required String scientificName,
                Value<String?> description = const Value.absent(),
                Value<String?> imageUrl = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => PlantsCompanion.insert(
                id: id,
                commonName: commonName,
                scientificName: scientificName,
                description: description,
                imageUrl: imageUrl,
                createdAt: createdAt,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PlantsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PlantsTable,
      Plant,
      $$PlantsTableFilterComposer,
      $$PlantsTableOrderingComposer,
      $$PlantsTableAnnotationComposer,
      $$PlantsTableCreateCompanionBuilder,
      $$PlantsTableUpdateCompanionBuilder,
      (Plant, BaseReferences<_$AppDatabase, $PlantsTable, Plant>),
      Plant,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PlantsTableTableManager get plants =>
      $$PlantsTableTableManager(_db, _db.plants);
}
