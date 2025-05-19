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
  static const VerificationMeta _customNameMeta = const VerificationMeta(
    'customName',
  );
  @override
  late final GeneratedColumn<String> customName = GeneratedColumn<String>(
    'custom_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
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
  static const VerificationMeta _precisionMeta = const VerificationMeta(
    'precision',
  );
  @override
  late final GeneratedColumn<double> precision = GeneratedColumn<double>(
    'precision',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
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
  static const VerificationMeta _similarImagesMeta = const VerificationMeta(
    'similarImages',
  );
  @override
  late final GeneratedColumn<String> similarImages = GeneratedColumn<String>(
    'similar_images',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _synonymsMeta = const VerificationMeta(
    'synonyms',
  );
  @override
  late final GeneratedColumn<String> synonyms = GeneratedColumn<String>(
    'synonyms',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _wikiMeta = const VerificationMeta('wiki');
  @override
  late final GeneratedColumn<String> wiki = GeneratedColumn<String>(
    'wiki',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _bestLightConditionMeta =
      const VerificationMeta('bestLightCondition');
  @override
  late final GeneratedColumn<String> bestLightCondition =
      GeneratedColumn<String>(
        'best_light_condition',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _commonUsesMeta = const VerificationMeta(
    'commonUses',
  );
  @override
  late final GeneratedColumn<String> commonUses = GeneratedColumn<String>(
    'common_uses',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _culturalSignificanceMeta =
      const VerificationMeta('culturalSignificance');
  @override
  late final GeneratedColumn<String> culturalSignificance =
      GeneratedColumn<String>(
        'cultural_significance',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _toxicityMeta = const VerificationMeta(
    'toxicity',
  );
  @override
  late final GeneratedColumn<String> toxicity = GeneratedColumn<String>(
    'toxicity',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _wateringMeta = const VerificationMeta(
    'watering',
  );
  @override
  late final GeneratedColumn<String> watering = GeneratedColumn<String>(
    'watering',
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
    customName,
    commonName,
    scientificName,
    precision,
    description,
    imageUrl,
    similarImages,
    synonyms,
    wiki,
    bestLightCondition,
    commonUses,
    culturalSignificance,
    toxicity,
    watering,
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
    if (data.containsKey('custom_name')) {
      context.handle(
        _customNameMeta,
        customName.isAcceptableOrUnknown(data['custom_name']!, _customNameMeta),
      );
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
    if (data.containsKey('precision')) {
      context.handle(
        _precisionMeta,
        precision.isAcceptableOrUnknown(data['precision']!, _precisionMeta),
      );
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
    if (data.containsKey('similar_images')) {
      context.handle(
        _similarImagesMeta,
        similarImages.isAcceptableOrUnknown(
          data['similar_images']!,
          _similarImagesMeta,
        ),
      );
    }
    if (data.containsKey('synonyms')) {
      context.handle(
        _synonymsMeta,
        synonyms.isAcceptableOrUnknown(data['synonyms']!, _synonymsMeta),
      );
    }
    if (data.containsKey('wiki')) {
      context.handle(
        _wikiMeta,
        wiki.isAcceptableOrUnknown(data['wiki']!, _wikiMeta),
      );
    }
    if (data.containsKey('best_light_condition')) {
      context.handle(
        _bestLightConditionMeta,
        bestLightCondition.isAcceptableOrUnknown(
          data['best_light_condition']!,
          _bestLightConditionMeta,
        ),
      );
    }
    if (data.containsKey('common_uses')) {
      context.handle(
        _commonUsesMeta,
        commonUses.isAcceptableOrUnknown(data['common_uses']!, _commonUsesMeta),
      );
    }
    if (data.containsKey('cultural_significance')) {
      context.handle(
        _culturalSignificanceMeta,
        culturalSignificance.isAcceptableOrUnknown(
          data['cultural_significance']!,
          _culturalSignificanceMeta,
        ),
      );
    }
    if (data.containsKey('toxicity')) {
      context.handle(
        _toxicityMeta,
        toxicity.isAcceptableOrUnknown(data['toxicity']!, _toxicityMeta),
      );
    }
    if (data.containsKey('watering')) {
      context.handle(
        _wateringMeta,
        watering.isAcceptableOrUnknown(data['watering']!, _wateringMeta),
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
      customName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}custom_name'],
      ),
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
      precision: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}precision'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      ),
      similarImages: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}similar_images'],
      ),
      synonyms: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}synonyms'],
      ),
      wiki: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}wiki'],
      ),
      bestLightCondition: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}best_light_condition'],
      ),
      commonUses: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}common_uses'],
      ),
      culturalSignificance: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cultural_significance'],
      ),
      toxicity: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}toxicity'],
      ),
      watering: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}watering'],
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
  final String? customName;
  final String commonName;
  final String scientificName;
  final double? precision;
  final String? description;
  final String? imageUrl;
  final String? similarImages;
  final String? synonyms;
  final String? wiki;
  final String? bestLightCondition;
  final String? commonUses;
  final String? culturalSignificance;
  final String? toxicity;
  final String? watering;
  final DateTime createdAt;
  const Plant({
    required this.id,
    this.customName,
    required this.commonName,
    required this.scientificName,
    this.precision,
    this.description,
    this.imageUrl,
    this.similarImages,
    this.synonyms,
    this.wiki,
    this.bestLightCondition,
    this.commonUses,
    this.culturalSignificance,
    this.toxicity,
    this.watering,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || customName != null) {
      map['custom_name'] = Variable<String>(customName);
    }
    map['common_name'] = Variable<String>(commonName);
    map['scientific_name'] = Variable<String>(scientificName);
    if (!nullToAbsent || precision != null) {
      map['precision'] = Variable<double>(precision);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    if (!nullToAbsent || similarImages != null) {
      map['similar_images'] = Variable<String>(similarImages);
    }
    if (!nullToAbsent || synonyms != null) {
      map['synonyms'] = Variable<String>(synonyms);
    }
    if (!nullToAbsent || wiki != null) {
      map['wiki'] = Variable<String>(wiki);
    }
    if (!nullToAbsent || bestLightCondition != null) {
      map['best_light_condition'] = Variable<String>(bestLightCondition);
    }
    if (!nullToAbsent || commonUses != null) {
      map['common_uses'] = Variable<String>(commonUses);
    }
    if (!nullToAbsent || culturalSignificance != null) {
      map['cultural_significance'] = Variable<String>(culturalSignificance);
    }
    if (!nullToAbsent || toxicity != null) {
      map['toxicity'] = Variable<String>(toxicity);
    }
    if (!nullToAbsent || watering != null) {
      map['watering'] = Variable<String>(watering);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  PlantsCompanion toCompanion(bool nullToAbsent) {
    return PlantsCompanion(
      id: Value(id),
      customName:
          customName == null && nullToAbsent
              ? const Value.absent()
              : Value(customName),
      commonName: Value(commonName),
      scientificName: Value(scientificName),
      precision:
          precision == null && nullToAbsent
              ? const Value.absent()
              : Value(precision),
      description:
          description == null && nullToAbsent
              ? const Value.absent()
              : Value(description),
      imageUrl:
          imageUrl == null && nullToAbsent
              ? const Value.absent()
              : Value(imageUrl),
      similarImages:
          similarImages == null && nullToAbsent
              ? const Value.absent()
              : Value(similarImages),
      synonyms:
          synonyms == null && nullToAbsent
              ? const Value.absent()
              : Value(synonyms),
      wiki: wiki == null && nullToAbsent ? const Value.absent() : Value(wiki),
      bestLightCondition:
          bestLightCondition == null && nullToAbsent
              ? const Value.absent()
              : Value(bestLightCondition),
      commonUses:
          commonUses == null && nullToAbsent
              ? const Value.absent()
              : Value(commonUses),
      culturalSignificance:
          culturalSignificance == null && nullToAbsent
              ? const Value.absent()
              : Value(culturalSignificance),
      toxicity:
          toxicity == null && nullToAbsent
              ? const Value.absent()
              : Value(toxicity),
      watering:
          watering == null && nullToAbsent
              ? const Value.absent()
              : Value(watering),
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
      customName: serializer.fromJson<String?>(json['customName']),
      commonName: serializer.fromJson<String>(json['commonName']),
      scientificName: serializer.fromJson<String>(json['scientificName']),
      precision: serializer.fromJson<double?>(json['precision']),
      description: serializer.fromJson<String?>(json['description']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      similarImages: serializer.fromJson<String?>(json['similarImages']),
      synonyms: serializer.fromJson<String?>(json['synonyms']),
      wiki: serializer.fromJson<String?>(json['wiki']),
      bestLightCondition: serializer.fromJson<String?>(
        json['bestLightCondition'],
      ),
      commonUses: serializer.fromJson<String?>(json['commonUses']),
      culturalSignificance: serializer.fromJson<String?>(
        json['culturalSignificance'],
      ),
      toxicity: serializer.fromJson<String?>(json['toxicity']),
      watering: serializer.fromJson<String?>(json['watering']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'customName': serializer.toJson<String?>(customName),
      'commonName': serializer.toJson<String>(commonName),
      'scientificName': serializer.toJson<String>(scientificName),
      'precision': serializer.toJson<double?>(precision),
      'description': serializer.toJson<String?>(description),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'similarImages': serializer.toJson<String?>(similarImages),
      'synonyms': serializer.toJson<String?>(synonyms),
      'wiki': serializer.toJson<String?>(wiki),
      'bestLightCondition': serializer.toJson<String?>(bestLightCondition),
      'commonUses': serializer.toJson<String?>(commonUses),
      'culturalSignificance': serializer.toJson<String?>(culturalSignificance),
      'toxicity': serializer.toJson<String?>(toxicity),
      'watering': serializer.toJson<String?>(watering),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Plant copyWith({
    int? id,
    Value<String?> customName = const Value.absent(),
    String? commonName,
    String? scientificName,
    Value<double?> precision = const Value.absent(),
    Value<String?> description = const Value.absent(),
    Value<String?> imageUrl = const Value.absent(),
    Value<String?> similarImages = const Value.absent(),
    Value<String?> synonyms = const Value.absent(),
    Value<String?> wiki = const Value.absent(),
    Value<String?> bestLightCondition = const Value.absent(),
    Value<String?> commonUses = const Value.absent(),
    Value<String?> culturalSignificance = const Value.absent(),
    Value<String?> toxicity = const Value.absent(),
    Value<String?> watering = const Value.absent(),
    DateTime? createdAt,
  }) => Plant(
    id: id ?? this.id,
    customName: customName.present ? customName.value : this.customName,
    commonName: commonName ?? this.commonName,
    scientificName: scientificName ?? this.scientificName,
    precision: precision.present ? precision.value : this.precision,
    description: description.present ? description.value : this.description,
    imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
    similarImages:
        similarImages.present ? similarImages.value : this.similarImages,
    synonyms: synonyms.present ? synonyms.value : this.synonyms,
    wiki: wiki.present ? wiki.value : this.wiki,
    bestLightCondition:
        bestLightCondition.present
            ? bestLightCondition.value
            : this.bestLightCondition,
    commonUses: commonUses.present ? commonUses.value : this.commonUses,
    culturalSignificance:
        culturalSignificance.present
            ? culturalSignificance.value
            : this.culturalSignificance,
    toxicity: toxicity.present ? toxicity.value : this.toxicity,
    watering: watering.present ? watering.value : this.watering,
    createdAt: createdAt ?? this.createdAt,
  );
  Plant copyWithCompanion(PlantsCompanion data) {
    return Plant(
      id: data.id.present ? data.id.value : this.id,
      customName:
          data.customName.present ? data.customName.value : this.customName,
      commonName:
          data.commonName.present ? data.commonName.value : this.commonName,
      scientificName:
          data.scientificName.present
              ? data.scientificName.value
              : this.scientificName,
      precision: data.precision.present ? data.precision.value : this.precision,
      description:
          data.description.present ? data.description.value : this.description,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      similarImages:
          data.similarImages.present
              ? data.similarImages.value
              : this.similarImages,
      synonyms: data.synonyms.present ? data.synonyms.value : this.synonyms,
      wiki: data.wiki.present ? data.wiki.value : this.wiki,
      bestLightCondition:
          data.bestLightCondition.present
              ? data.bestLightCondition.value
              : this.bestLightCondition,
      commonUses:
          data.commonUses.present ? data.commonUses.value : this.commonUses,
      culturalSignificance:
          data.culturalSignificance.present
              ? data.culturalSignificance.value
              : this.culturalSignificance,
      toxicity: data.toxicity.present ? data.toxicity.value : this.toxicity,
      watering: data.watering.present ? data.watering.value : this.watering,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Plant(')
          ..write('id: $id, ')
          ..write('customName: $customName, ')
          ..write('commonName: $commonName, ')
          ..write('scientificName: $scientificName, ')
          ..write('precision: $precision, ')
          ..write('description: $description, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('similarImages: $similarImages, ')
          ..write('synonyms: $synonyms, ')
          ..write('wiki: $wiki, ')
          ..write('bestLightCondition: $bestLightCondition, ')
          ..write('commonUses: $commonUses, ')
          ..write('culturalSignificance: $culturalSignificance, ')
          ..write('toxicity: $toxicity, ')
          ..write('watering: $watering, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    customName,
    commonName,
    scientificName,
    precision,
    description,
    imageUrl,
    similarImages,
    synonyms,
    wiki,
    bestLightCondition,
    commonUses,
    culturalSignificance,
    toxicity,
    watering,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Plant &&
          other.id == this.id &&
          other.customName == this.customName &&
          other.commonName == this.commonName &&
          other.scientificName == this.scientificName &&
          other.precision == this.precision &&
          other.description == this.description &&
          other.imageUrl == this.imageUrl &&
          other.similarImages == this.similarImages &&
          other.synonyms == this.synonyms &&
          other.wiki == this.wiki &&
          other.bestLightCondition == this.bestLightCondition &&
          other.commonUses == this.commonUses &&
          other.culturalSignificance == this.culturalSignificance &&
          other.toxicity == this.toxicity &&
          other.watering == this.watering &&
          other.createdAt == this.createdAt);
}

class PlantsCompanion extends UpdateCompanion<Plant> {
  final Value<int> id;
  final Value<String?> customName;
  final Value<String> commonName;
  final Value<String> scientificName;
  final Value<double?> precision;
  final Value<String?> description;
  final Value<String?> imageUrl;
  final Value<String?> similarImages;
  final Value<String?> synonyms;
  final Value<String?> wiki;
  final Value<String?> bestLightCondition;
  final Value<String?> commonUses;
  final Value<String?> culturalSignificance;
  final Value<String?> toxicity;
  final Value<String?> watering;
  final Value<DateTime> createdAt;
  const PlantsCompanion({
    this.id = const Value.absent(),
    this.customName = const Value.absent(),
    this.commonName = const Value.absent(),
    this.scientificName = const Value.absent(),
    this.precision = const Value.absent(),
    this.description = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.similarImages = const Value.absent(),
    this.synonyms = const Value.absent(),
    this.wiki = const Value.absent(),
    this.bestLightCondition = const Value.absent(),
    this.commonUses = const Value.absent(),
    this.culturalSignificance = const Value.absent(),
    this.toxicity = const Value.absent(),
    this.watering = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  PlantsCompanion.insert({
    this.id = const Value.absent(),
    this.customName = const Value.absent(),
    required String commonName,
    required String scientificName,
    this.precision = const Value.absent(),
    this.description = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.similarImages = const Value.absent(),
    this.synonyms = const Value.absent(),
    this.wiki = const Value.absent(),
    this.bestLightCondition = const Value.absent(),
    this.commonUses = const Value.absent(),
    this.culturalSignificance = const Value.absent(),
    this.toxicity = const Value.absent(),
    this.watering = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : commonName = Value(commonName),
       scientificName = Value(scientificName);
  static Insertable<Plant> custom({
    Expression<int>? id,
    Expression<String>? customName,
    Expression<String>? commonName,
    Expression<String>? scientificName,
    Expression<double>? precision,
    Expression<String>? description,
    Expression<String>? imageUrl,
    Expression<String>? similarImages,
    Expression<String>? synonyms,
    Expression<String>? wiki,
    Expression<String>? bestLightCondition,
    Expression<String>? commonUses,
    Expression<String>? culturalSignificance,
    Expression<String>? toxicity,
    Expression<String>? watering,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (customName != null) 'custom_name': customName,
      if (commonName != null) 'common_name': commonName,
      if (scientificName != null) 'scientific_name': scientificName,
      if (precision != null) 'precision': precision,
      if (description != null) 'description': description,
      if (imageUrl != null) 'image_url': imageUrl,
      if (similarImages != null) 'similar_images': similarImages,
      if (synonyms != null) 'synonyms': synonyms,
      if (wiki != null) 'wiki': wiki,
      if (bestLightCondition != null)
        'best_light_condition': bestLightCondition,
      if (commonUses != null) 'common_uses': commonUses,
      if (culturalSignificance != null)
        'cultural_significance': culturalSignificance,
      if (toxicity != null) 'toxicity': toxicity,
      if (watering != null) 'watering': watering,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  PlantsCompanion copyWith({
    Value<int>? id,
    Value<String?>? customName,
    Value<String>? commonName,
    Value<String>? scientificName,
    Value<double?>? precision,
    Value<String?>? description,
    Value<String?>? imageUrl,
    Value<String?>? similarImages,
    Value<String?>? synonyms,
    Value<String?>? wiki,
    Value<String?>? bestLightCondition,
    Value<String?>? commonUses,
    Value<String?>? culturalSignificance,
    Value<String?>? toxicity,
    Value<String?>? watering,
    Value<DateTime>? createdAt,
  }) {
    return PlantsCompanion(
      id: id ?? this.id,
      customName: customName ?? this.customName,
      commonName: commonName ?? this.commonName,
      scientificName: scientificName ?? this.scientificName,
      precision: precision ?? this.precision,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      similarImages: similarImages ?? this.similarImages,
      synonyms: synonyms ?? this.synonyms,
      wiki: wiki ?? this.wiki,
      bestLightCondition: bestLightCondition ?? this.bestLightCondition,
      commonUses: commonUses ?? this.commonUses,
      culturalSignificance: culturalSignificance ?? this.culturalSignificance,
      toxicity: toxicity ?? this.toxicity,
      watering: watering ?? this.watering,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (customName.present) {
      map['custom_name'] = Variable<String>(customName.value);
    }
    if (commonName.present) {
      map['common_name'] = Variable<String>(commonName.value);
    }
    if (scientificName.present) {
      map['scientific_name'] = Variable<String>(scientificName.value);
    }
    if (precision.present) {
      map['precision'] = Variable<double>(precision.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (similarImages.present) {
      map['similar_images'] = Variable<String>(similarImages.value);
    }
    if (synonyms.present) {
      map['synonyms'] = Variable<String>(synonyms.value);
    }
    if (wiki.present) {
      map['wiki'] = Variable<String>(wiki.value);
    }
    if (bestLightCondition.present) {
      map['best_light_condition'] = Variable<String>(bestLightCondition.value);
    }
    if (commonUses.present) {
      map['common_uses'] = Variable<String>(commonUses.value);
    }
    if (culturalSignificance.present) {
      map['cultural_significance'] = Variable<String>(
        culturalSignificance.value,
      );
    }
    if (toxicity.present) {
      map['toxicity'] = Variable<String>(toxicity.value);
    }
    if (watering.present) {
      map['watering'] = Variable<String>(watering.value);
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
          ..write('customName: $customName, ')
          ..write('commonName: $commonName, ')
          ..write('scientificName: $scientificName, ')
          ..write('precision: $precision, ')
          ..write('description: $description, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('similarImages: $similarImages, ')
          ..write('synonyms: $synonyms, ')
          ..write('wiki: $wiki, ')
          ..write('bestLightCondition: $bestLightCondition, ')
          ..write('commonUses: $commonUses, ')
          ..write('culturalSignificance: $culturalSignificance, ')
          ..write('toxicity: $toxicity, ')
          ..write('watering: $watering, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $TagsTable extends Tags with TableInfo<$TagsTable, Tag> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TagsTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tags';
  @override
  VerificationContext validateIntegrity(
    Insertable<Tag> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Tag map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Tag(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
    );
  }

  @override
  $TagsTable createAlias(String alias) {
    return $TagsTable(attachedDatabase, alias);
  }
}

class Tag extends DataClass implements Insertable<Tag> {
  final int id;
  final String name;
  const Tag({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  TagsCompanion toCompanion(bool nullToAbsent) {
    return TagsCompanion(id: Value(id), name: Value(name));
  }

  factory Tag.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Tag(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  Tag copyWith({int? id, String? name}) =>
      Tag(id: id ?? this.id, name: name ?? this.name);
  Tag copyWithCompanion(TagsCompanion data) {
    return Tag(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Tag(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tag && other.id == this.id && other.name == this.name);
}

class TagsCompanion extends UpdateCompanion<Tag> {
  final Value<int> id;
  final Value<String> name;
  const TagsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  TagsCompanion.insert({this.id = const Value.absent(), required String name})
    : name = Value(name);
  static Insertable<Tag> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  TagsCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return TagsCompanion(id: id ?? this.id, name: name ?? this.name);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TagsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $PlantsTagsTable extends PlantsTags
    with TableInfo<$PlantsTagsTable, PlantsTag> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PlantsTagsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _plantIdMeta = const VerificationMeta(
    'plantId',
  );
  @override
  late final GeneratedColumn<int> plantId = GeneratedColumn<int>(
    'plant_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES plants (id)',
    ),
  );
  static const VerificationMeta _tagIdMeta = const VerificationMeta('tagId');
  @override
  late final GeneratedColumn<int> tagId = GeneratedColumn<int>(
    'tag_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES tags (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [plantId, tagId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'plants_tags';
  @override
  VerificationContext validateIntegrity(
    Insertable<PlantsTag> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('plant_id')) {
      context.handle(
        _plantIdMeta,
        plantId.isAcceptableOrUnknown(data['plant_id']!, _plantIdMeta),
      );
    } else if (isInserting) {
      context.missing(_plantIdMeta);
    }
    if (data.containsKey('tag_id')) {
      context.handle(
        _tagIdMeta,
        tagId.isAcceptableOrUnknown(data['tag_id']!, _tagIdMeta),
      );
    } else if (isInserting) {
      context.missing(_tagIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {plantId, tagId};
  @override
  PlantsTag map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PlantsTag(
      plantId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}plant_id'],
          )!,
      tagId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}tag_id'],
          )!,
    );
  }

  @override
  $PlantsTagsTable createAlias(String alias) {
    return $PlantsTagsTable(attachedDatabase, alias);
  }
}

class PlantsTag extends DataClass implements Insertable<PlantsTag> {
  final int plantId;
  final int tagId;
  const PlantsTag({required this.plantId, required this.tagId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['plant_id'] = Variable<int>(plantId);
    map['tag_id'] = Variable<int>(tagId);
    return map;
  }

  PlantsTagsCompanion toCompanion(bool nullToAbsent) {
    return PlantsTagsCompanion(plantId: Value(plantId), tagId: Value(tagId));
  }

  factory PlantsTag.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PlantsTag(
      plantId: serializer.fromJson<int>(json['plantId']),
      tagId: serializer.fromJson<int>(json['tagId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'plantId': serializer.toJson<int>(plantId),
      'tagId': serializer.toJson<int>(tagId),
    };
  }

  PlantsTag copyWith({int? plantId, int? tagId}) =>
      PlantsTag(plantId: plantId ?? this.plantId, tagId: tagId ?? this.tagId);
  PlantsTag copyWithCompanion(PlantsTagsCompanion data) {
    return PlantsTag(
      plantId: data.plantId.present ? data.plantId.value : this.plantId,
      tagId: data.tagId.present ? data.tagId.value : this.tagId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PlantsTag(')
          ..write('plantId: $plantId, ')
          ..write('tagId: $tagId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(plantId, tagId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PlantsTag &&
          other.plantId == this.plantId &&
          other.tagId == this.tagId);
}

class PlantsTagsCompanion extends UpdateCompanion<PlantsTag> {
  final Value<int> plantId;
  final Value<int> tagId;
  final Value<int> rowid;
  const PlantsTagsCompanion({
    this.plantId = const Value.absent(),
    this.tagId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PlantsTagsCompanion.insert({
    required int plantId,
    required int tagId,
    this.rowid = const Value.absent(),
  }) : plantId = Value(plantId),
       tagId = Value(tagId);
  static Insertable<PlantsTag> custom({
    Expression<int>? plantId,
    Expression<int>? tagId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (plantId != null) 'plant_id': plantId,
      if (tagId != null) 'tag_id': tagId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PlantsTagsCompanion copyWith({
    Value<int>? plantId,
    Value<int>? tagId,
    Value<int>? rowid,
  }) {
    return PlantsTagsCompanion(
      plantId: plantId ?? this.plantId,
      tagId: tagId ?? this.tagId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (plantId.present) {
      map['plant_id'] = Variable<int>(plantId.value);
    }
    if (tagId.present) {
      map['tag_id'] = Variable<int>(tagId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlantsTagsCompanion(')
          ..write('plantId: $plantId, ')
          ..write('tagId: $tagId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PlantImagesTable extends PlantImages
    with TableInfo<$PlantImagesTable, PlantImage> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PlantImagesTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _plantIdMeta = const VerificationMeta(
    'plantId',
  );
  @override
  late final GeneratedColumn<int> plantId = GeneratedColumn<int>(
    'plant_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES plants (id)',
    ),
  );
  static const VerificationMeta _pathMeta = const VerificationMeta('path');
  @override
  late final GeneratedColumn<String> path = GeneratedColumn<String>(
    'path',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _addedAtMeta = const VerificationMeta(
    'addedAt',
  );
  @override
  late final GeneratedColumn<DateTime> addedAt = GeneratedColumn<DateTime>(
    'added_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    clientDefault: () => DateTime.now(),
  );
  @override
  List<GeneratedColumn> get $columns => [id, plantId, path, addedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'plant_images';
  @override
  VerificationContext validateIntegrity(
    Insertable<PlantImage> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('plant_id')) {
      context.handle(
        _plantIdMeta,
        plantId.isAcceptableOrUnknown(data['plant_id']!, _plantIdMeta),
      );
    } else if (isInserting) {
      context.missing(_plantIdMeta);
    }
    if (data.containsKey('path')) {
      context.handle(
        _pathMeta,
        path.isAcceptableOrUnknown(data['path']!, _pathMeta),
      );
    } else if (isInserting) {
      context.missing(_pathMeta);
    }
    if (data.containsKey('added_at')) {
      context.handle(
        _addedAtMeta,
        addedAt.isAcceptableOrUnknown(data['added_at']!, _addedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PlantImage map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PlantImage(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      plantId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}plant_id'],
          )!,
      path:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}path'],
          )!,
      addedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}added_at'],
          )!,
    );
  }

  @override
  $PlantImagesTable createAlias(String alias) {
    return $PlantImagesTable(attachedDatabase, alias);
  }
}

class PlantImage extends DataClass implements Insertable<PlantImage> {
  final int id;
  final int plantId;
  final String path;
  final DateTime addedAt;
  const PlantImage({
    required this.id,
    required this.plantId,
    required this.path,
    required this.addedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['plant_id'] = Variable<int>(plantId);
    map['path'] = Variable<String>(path);
    map['added_at'] = Variable<DateTime>(addedAt);
    return map;
  }

  PlantImagesCompanion toCompanion(bool nullToAbsent) {
    return PlantImagesCompanion(
      id: Value(id),
      plantId: Value(plantId),
      path: Value(path),
      addedAt: Value(addedAt),
    );
  }

  factory PlantImage.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PlantImage(
      id: serializer.fromJson<int>(json['id']),
      plantId: serializer.fromJson<int>(json['plantId']),
      path: serializer.fromJson<String>(json['path']),
      addedAt: serializer.fromJson<DateTime>(json['addedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'plantId': serializer.toJson<int>(plantId),
      'path': serializer.toJson<String>(path),
      'addedAt': serializer.toJson<DateTime>(addedAt),
    };
  }

  PlantImage copyWith({
    int? id,
    int? plantId,
    String? path,
    DateTime? addedAt,
  }) => PlantImage(
    id: id ?? this.id,
    plantId: plantId ?? this.plantId,
    path: path ?? this.path,
    addedAt: addedAt ?? this.addedAt,
  );
  PlantImage copyWithCompanion(PlantImagesCompanion data) {
    return PlantImage(
      id: data.id.present ? data.id.value : this.id,
      plantId: data.plantId.present ? data.plantId.value : this.plantId,
      path: data.path.present ? data.path.value : this.path,
      addedAt: data.addedAt.present ? data.addedAt.value : this.addedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PlantImage(')
          ..write('id: $id, ')
          ..write('plantId: $plantId, ')
          ..write('path: $path, ')
          ..write('addedAt: $addedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, plantId, path, addedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PlantImage &&
          other.id == this.id &&
          other.plantId == this.plantId &&
          other.path == this.path &&
          other.addedAt == this.addedAt);
}

class PlantImagesCompanion extends UpdateCompanion<PlantImage> {
  final Value<int> id;
  final Value<int> plantId;
  final Value<String> path;
  final Value<DateTime> addedAt;
  const PlantImagesCompanion({
    this.id = const Value.absent(),
    this.plantId = const Value.absent(),
    this.path = const Value.absent(),
    this.addedAt = const Value.absent(),
  });
  PlantImagesCompanion.insert({
    this.id = const Value.absent(),
    required int plantId,
    required String path,
    this.addedAt = const Value.absent(),
  }) : plantId = Value(plantId),
       path = Value(path);
  static Insertable<PlantImage> custom({
    Expression<int>? id,
    Expression<int>? plantId,
    Expression<String>? path,
    Expression<DateTime>? addedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (plantId != null) 'plant_id': plantId,
      if (path != null) 'path': path,
      if (addedAt != null) 'added_at': addedAt,
    });
  }

  PlantImagesCompanion copyWith({
    Value<int>? id,
    Value<int>? plantId,
    Value<String>? path,
    Value<DateTime>? addedAt,
  }) {
    return PlantImagesCompanion(
      id: id ?? this.id,
      plantId: plantId ?? this.plantId,
      path: path ?? this.path,
      addedAt: addedAt ?? this.addedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (plantId.present) {
      map['plant_id'] = Variable<int>(plantId.value);
    }
    if (path.present) {
      map['path'] = Variable<String>(path.value);
    }
    if (addedAt.present) {
      map['added_at'] = Variable<DateTime>(addedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlantImagesCompanion(')
          ..write('id: $id, ')
          ..write('plantId: $plantId, ')
          ..write('path: $path, ')
          ..write('addedAt: $addedAt')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _usernameMeta = const VerificationMeta(
    'username',
  );
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
    'username',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _passwordMeta = const VerificationMeta(
    'password',
  );
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
    'password',
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
    username,
    email,
    password,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(
    Insertable<User> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('username')) {
      context.handle(
        _usernameMeta,
        username.isAcceptableOrUnknown(data['username']!, _usernameMeta),
      );
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    }
    if (data.containsKey('password')) {
      context.handle(
        _passwordMeta,
        password.isAcceptableOrUnknown(data['password']!, _passwordMeta),
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
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      username:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}username'],
          )!,
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      ),
      password: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}password'],
      ),
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final int id;
  final String username;
  final String? email;
  final String? password;
  final DateTime createdAt;
  const User({
    required this.id,
    required this.username,
    this.email,
    this.password,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['username'] = Variable<String>(username);
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || password != null) {
      map['password'] = Variable<String>(password);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      username: Value(username),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      password:
          password == null && nullToAbsent
              ? const Value.absent()
              : Value(password),
      createdAt: Value(createdAt),
    );
  }

  factory User.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      username: serializer.fromJson<String>(json['username']),
      email: serializer.fromJson<String?>(json['email']),
      password: serializer.fromJson<String?>(json['password']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'username': serializer.toJson<String>(username),
      'email': serializer.toJson<String?>(email),
      'password': serializer.toJson<String?>(password),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  User copyWith({
    int? id,
    String? username,
    Value<String?> email = const Value.absent(),
    Value<String?> password = const Value.absent(),
    DateTime? createdAt,
  }) => User(
    id: id ?? this.id,
    username: username ?? this.username,
    email: email.present ? email.value : this.email,
    password: password.present ? password.value : this.password,
    createdAt: createdAt ?? this.createdAt,
  );
  User copyWithCompanion(UsersCompanion data) {
    return User(
      id: data.id.present ? data.id.value : this.id,
      username: data.username.present ? data.username.value : this.username,
      email: data.email.present ? data.email.value : this.email,
      password: data.password.present ? data.password.value : this.password,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, username, email, password, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.username == this.username &&
          other.email == this.email &&
          other.password == this.password &&
          other.createdAt == this.createdAt);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> username;
  final Value<String?> email;
  final Value<String?> password;
  final Value<DateTime> createdAt;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.username = const Value.absent(),
    this.email = const Value.absent(),
    this.password = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    required String username,
    this.email = const Value.absent(),
    this.password = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : username = Value(username);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? username,
    Expression<String>? email,
    Expression<String>? password,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (username != null) 'username': username,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  UsersCompanion copyWith({
    Value<int>? id,
    Value<String>? username,
    Value<String?>? email,
    Value<String?>? password,
    Value<DateTime>? createdAt,
  }) {
    return UsersCompanion(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PlantsTable plants = $PlantsTable(this);
  late final $TagsTable tags = $TagsTable(this);
  late final $PlantsTagsTable plantsTags = $PlantsTagsTable(this);
  late final $PlantImagesTable plantImages = $PlantImagesTable(this);
  late final $UsersTable users = $UsersTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    plants,
    tags,
    plantsTags,
    plantImages,
    users,
  ];
}

typedef $$PlantsTableCreateCompanionBuilder =
    PlantsCompanion Function({
      Value<int> id,
      Value<String?> customName,
      required String commonName,
      required String scientificName,
      Value<double?> precision,
      Value<String?> description,
      Value<String?> imageUrl,
      Value<String?> similarImages,
      Value<String?> synonyms,
      Value<String?> wiki,
      Value<String?> bestLightCondition,
      Value<String?> commonUses,
      Value<String?> culturalSignificance,
      Value<String?> toxicity,
      Value<String?> watering,
      Value<DateTime> createdAt,
    });
typedef $$PlantsTableUpdateCompanionBuilder =
    PlantsCompanion Function({
      Value<int> id,
      Value<String?> customName,
      Value<String> commonName,
      Value<String> scientificName,
      Value<double?> precision,
      Value<String?> description,
      Value<String?> imageUrl,
      Value<String?> similarImages,
      Value<String?> synonyms,
      Value<String?> wiki,
      Value<String?> bestLightCondition,
      Value<String?> commonUses,
      Value<String?> culturalSignificance,
      Value<String?> toxicity,
      Value<String?> watering,
      Value<DateTime> createdAt,
    });

final class $$PlantsTableReferences
    extends BaseReferences<_$AppDatabase, $PlantsTable, Plant> {
  $$PlantsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PlantsTagsTable, List<PlantsTag>>
  _plantsTagsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.plantsTags,
    aliasName: $_aliasNameGenerator(db.plants.id, db.plantsTags.plantId),
  );

  $$PlantsTagsTableProcessedTableManager get plantsTagsRefs {
    final manager = $$PlantsTagsTableTableManager(
      $_db,
      $_db.plantsTags,
    ).filter((f) => f.plantId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_plantsTagsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$PlantImagesTable, List<PlantImage>>
  _plantImagesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.plantImages,
    aliasName: $_aliasNameGenerator(db.plants.id, db.plantImages.plantId),
  );

  $$PlantImagesTableProcessedTableManager get plantImagesRefs {
    final manager = $$PlantImagesTableTableManager(
      $_db,
      $_db.plantImages,
    ).filter((f) => f.plantId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_plantImagesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

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

  ColumnFilters<String> get customName => $composableBuilder(
    column: $table.customName,
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

  ColumnFilters<double> get precision => $composableBuilder(
    column: $table.precision,
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

  ColumnFilters<String> get similarImages => $composableBuilder(
    column: $table.similarImages,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get synonyms => $composableBuilder(
    column: $table.synonyms,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get wiki => $composableBuilder(
    column: $table.wiki,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bestLightCondition => $composableBuilder(
    column: $table.bestLightCondition,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get commonUses => $composableBuilder(
    column: $table.commonUses,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get culturalSignificance => $composableBuilder(
    column: $table.culturalSignificance,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get toxicity => $composableBuilder(
    column: $table.toxicity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get watering => $composableBuilder(
    column: $table.watering,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> plantsTagsRefs(
    Expression<bool> Function($$PlantsTagsTableFilterComposer f) f,
  ) {
    final $$PlantsTagsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.plantsTags,
      getReferencedColumn: (t) => t.plantId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PlantsTagsTableFilterComposer(
            $db: $db,
            $table: $db.plantsTags,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> plantImagesRefs(
    Expression<bool> Function($$PlantImagesTableFilterComposer f) f,
  ) {
    final $$PlantImagesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.plantImages,
      getReferencedColumn: (t) => t.plantId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PlantImagesTableFilterComposer(
            $db: $db,
            $table: $db.plantImages,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
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

  ColumnOrderings<String> get customName => $composableBuilder(
    column: $table.customName,
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

  ColumnOrderings<double> get precision => $composableBuilder(
    column: $table.precision,
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

  ColumnOrderings<String> get similarImages => $composableBuilder(
    column: $table.similarImages,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get synonyms => $composableBuilder(
    column: $table.synonyms,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get wiki => $composableBuilder(
    column: $table.wiki,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bestLightCondition => $composableBuilder(
    column: $table.bestLightCondition,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get commonUses => $composableBuilder(
    column: $table.commonUses,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get culturalSignificance => $composableBuilder(
    column: $table.culturalSignificance,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get toxicity => $composableBuilder(
    column: $table.toxicity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get watering => $composableBuilder(
    column: $table.watering,
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

  GeneratedColumn<String> get customName => $composableBuilder(
    column: $table.customName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get commonName => $composableBuilder(
    column: $table.commonName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get scientificName => $composableBuilder(
    column: $table.scientificName,
    builder: (column) => column,
  );

  GeneratedColumn<double> get precision =>
      $composableBuilder(column: $table.precision, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<String> get similarImages => $composableBuilder(
    column: $table.similarImages,
    builder: (column) => column,
  );

  GeneratedColumn<String> get synonyms =>
      $composableBuilder(column: $table.synonyms, builder: (column) => column);

  GeneratedColumn<String> get wiki =>
      $composableBuilder(column: $table.wiki, builder: (column) => column);

  GeneratedColumn<String> get bestLightCondition => $composableBuilder(
    column: $table.bestLightCondition,
    builder: (column) => column,
  );

  GeneratedColumn<String> get commonUses => $composableBuilder(
    column: $table.commonUses,
    builder: (column) => column,
  );

  GeneratedColumn<String> get culturalSignificance => $composableBuilder(
    column: $table.culturalSignificance,
    builder: (column) => column,
  );

  GeneratedColumn<String> get toxicity =>
      $composableBuilder(column: $table.toxicity, builder: (column) => column);

  GeneratedColumn<String> get watering =>
      $composableBuilder(column: $table.watering, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> plantsTagsRefs<T extends Object>(
    Expression<T> Function($$PlantsTagsTableAnnotationComposer a) f,
  ) {
    final $$PlantsTagsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.plantsTags,
      getReferencedColumn: (t) => t.plantId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PlantsTagsTableAnnotationComposer(
            $db: $db,
            $table: $db.plantsTags,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> plantImagesRefs<T extends Object>(
    Expression<T> Function($$PlantImagesTableAnnotationComposer a) f,
  ) {
    final $$PlantImagesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.plantImages,
      getReferencedColumn: (t) => t.plantId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PlantImagesTableAnnotationComposer(
            $db: $db,
            $table: $db.plantImages,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
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
          (Plant, $$PlantsTableReferences),
          Plant,
          PrefetchHooks Function({bool plantsTagsRefs, bool plantImagesRefs})
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
                Value<String?> customName = const Value.absent(),
                Value<String> commonName = const Value.absent(),
                Value<String> scientificName = const Value.absent(),
                Value<double?> precision = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> imageUrl = const Value.absent(),
                Value<String?> similarImages = const Value.absent(),
                Value<String?> synonyms = const Value.absent(),
                Value<String?> wiki = const Value.absent(),
                Value<String?> bestLightCondition = const Value.absent(),
                Value<String?> commonUses = const Value.absent(),
                Value<String?> culturalSignificance = const Value.absent(),
                Value<String?> toxicity = const Value.absent(),
                Value<String?> watering = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => PlantsCompanion(
                id: id,
                customName: customName,
                commonName: commonName,
                scientificName: scientificName,
                precision: precision,
                description: description,
                imageUrl: imageUrl,
                similarImages: similarImages,
                synonyms: synonyms,
                wiki: wiki,
                bestLightCondition: bestLightCondition,
                commonUses: commonUses,
                culturalSignificance: culturalSignificance,
                toxicity: toxicity,
                watering: watering,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> customName = const Value.absent(),
                required String commonName,
                required String scientificName,
                Value<double?> precision = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> imageUrl = const Value.absent(),
                Value<String?> similarImages = const Value.absent(),
                Value<String?> synonyms = const Value.absent(),
                Value<String?> wiki = const Value.absent(),
                Value<String?> bestLightCondition = const Value.absent(),
                Value<String?> commonUses = const Value.absent(),
                Value<String?> culturalSignificance = const Value.absent(),
                Value<String?> toxicity = const Value.absent(),
                Value<String?> watering = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => PlantsCompanion.insert(
                id: id,
                customName: customName,
                commonName: commonName,
                scientificName: scientificName,
                precision: precision,
                description: description,
                imageUrl: imageUrl,
                similarImages: similarImages,
                synonyms: synonyms,
                wiki: wiki,
                bestLightCondition: bestLightCondition,
                commonUses: commonUses,
                culturalSignificance: culturalSignificance,
                toxicity: toxicity,
                watering: watering,
                createdAt: createdAt,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$PlantsTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({
            plantsTagsRefs = false,
            plantImagesRefs = false,
          }) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (plantsTagsRefs) db.plantsTags,
                if (plantImagesRefs) db.plantImages,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (plantsTagsRefs)
                    await $_getPrefetchedData<Plant, $PlantsTable, PlantsTag>(
                      currentTable: table,
                      referencedTable: $$PlantsTableReferences
                          ._plantsTagsRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$PlantsTableReferences(
                                db,
                                table,
                                p0,
                              ).plantsTagsRefs,
                      referencedItemsForCurrentItem:
                          (item, referencedItems) => referencedItems.where(
                            (e) => e.plantId == item.id,
                          ),
                      typedResults: items,
                    ),
                  if (plantImagesRefs)
                    await $_getPrefetchedData<Plant, $PlantsTable, PlantImage>(
                      currentTable: table,
                      referencedTable: $$PlantsTableReferences
                          ._plantImagesRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$PlantsTableReferences(
                                db,
                                table,
                                p0,
                              ).plantImagesRefs,
                      referencedItemsForCurrentItem:
                          (item, referencedItems) => referencedItems.where(
                            (e) => e.plantId == item.id,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
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
      (Plant, $$PlantsTableReferences),
      Plant,
      PrefetchHooks Function({bool plantsTagsRefs, bool plantImagesRefs})
    >;
typedef $$TagsTableCreateCompanionBuilder =
    TagsCompanion Function({Value<int> id, required String name});
typedef $$TagsTableUpdateCompanionBuilder =
    TagsCompanion Function({Value<int> id, Value<String> name});

final class $$TagsTableReferences
    extends BaseReferences<_$AppDatabase, $TagsTable, Tag> {
  $$TagsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PlantsTagsTable, List<PlantsTag>>
  _plantsTagsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.plantsTags,
    aliasName: $_aliasNameGenerator(db.tags.id, db.plantsTags.tagId),
  );

  $$PlantsTagsTableProcessedTableManager get plantsTagsRefs {
    final manager = $$PlantsTagsTableTableManager(
      $_db,
      $_db.plantsTags,
    ).filter((f) => f.tagId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_plantsTagsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$TagsTableFilterComposer extends Composer<_$AppDatabase, $TagsTable> {
  $$TagsTableFilterComposer({
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

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> plantsTagsRefs(
    Expression<bool> Function($$PlantsTagsTableFilterComposer f) f,
  ) {
    final $$PlantsTagsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.plantsTags,
      getReferencedColumn: (t) => t.tagId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PlantsTagsTableFilterComposer(
            $db: $db,
            $table: $db.plantsTags,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TagsTableOrderingComposer extends Composer<_$AppDatabase, $TagsTable> {
  $$TagsTableOrderingComposer({
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

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TagsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TagsTable> {
  $$TagsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> plantsTagsRefs<T extends Object>(
    Expression<T> Function($$PlantsTagsTableAnnotationComposer a) f,
  ) {
    final $$PlantsTagsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.plantsTags,
      getReferencedColumn: (t) => t.tagId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PlantsTagsTableAnnotationComposer(
            $db: $db,
            $table: $db.plantsTags,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TagsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TagsTable,
          Tag,
          $$TagsTableFilterComposer,
          $$TagsTableOrderingComposer,
          $$TagsTableAnnotationComposer,
          $$TagsTableCreateCompanionBuilder,
          $$TagsTableUpdateCompanionBuilder,
          (Tag, $$TagsTableReferences),
          Tag,
          PrefetchHooks Function({bool plantsTagsRefs})
        > {
  $$TagsTableTableManager(_$AppDatabase db, $TagsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$TagsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$TagsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$TagsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
              }) => TagsCompanion(id: id, name: name),
          createCompanionCallback:
              ({Value<int> id = const Value.absent(), required String name}) =>
                  TagsCompanion.insert(id: id, name: name),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$TagsTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({plantsTagsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (plantsTagsRefs) db.plantsTags],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (plantsTagsRefs)
                    await $_getPrefetchedData<Tag, $TagsTable, PlantsTag>(
                      currentTable: table,
                      referencedTable: $$TagsTableReferences
                          ._plantsTagsRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$TagsTableReferences(
                                db,
                                table,
                                p0,
                              ).plantsTagsRefs,
                      referencedItemsForCurrentItem:
                          (item, referencedItems) =>
                              referencedItems.where((e) => e.tagId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$TagsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TagsTable,
      Tag,
      $$TagsTableFilterComposer,
      $$TagsTableOrderingComposer,
      $$TagsTableAnnotationComposer,
      $$TagsTableCreateCompanionBuilder,
      $$TagsTableUpdateCompanionBuilder,
      (Tag, $$TagsTableReferences),
      Tag,
      PrefetchHooks Function({bool plantsTagsRefs})
    >;
typedef $$PlantsTagsTableCreateCompanionBuilder =
    PlantsTagsCompanion Function({
      required int plantId,
      required int tagId,
      Value<int> rowid,
    });
typedef $$PlantsTagsTableUpdateCompanionBuilder =
    PlantsTagsCompanion Function({
      Value<int> plantId,
      Value<int> tagId,
      Value<int> rowid,
    });

final class $$PlantsTagsTableReferences
    extends BaseReferences<_$AppDatabase, $PlantsTagsTable, PlantsTag> {
  $$PlantsTagsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PlantsTable _plantIdTable(_$AppDatabase db) => db.plants.createAlias(
    $_aliasNameGenerator(db.plantsTags.plantId, db.plants.id),
  );

  $$PlantsTableProcessedTableManager get plantId {
    final $_column = $_itemColumn<int>('plant_id')!;

    final manager = $$PlantsTableTableManager(
      $_db,
      $_db.plants,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_plantIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $TagsTable _tagIdTable(_$AppDatabase db) => db.tags.createAlias(
    $_aliasNameGenerator(db.plantsTags.tagId, db.tags.id),
  );

  $$TagsTableProcessedTableManager get tagId {
    final $_column = $_itemColumn<int>('tag_id')!;

    final manager = $$TagsTableTableManager(
      $_db,
      $_db.tags,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_tagIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PlantsTagsTableFilterComposer
    extends Composer<_$AppDatabase, $PlantsTagsTable> {
  $$PlantsTagsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$PlantsTableFilterComposer get plantId {
    final $$PlantsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.plantId,
      referencedTable: $db.plants,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PlantsTableFilterComposer(
            $db: $db,
            $table: $db.plants,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TagsTableFilterComposer get tagId {
    final $$TagsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tagId,
      referencedTable: $db.tags,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TagsTableFilterComposer(
            $db: $db,
            $table: $db.tags,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PlantsTagsTableOrderingComposer
    extends Composer<_$AppDatabase, $PlantsTagsTable> {
  $$PlantsTagsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$PlantsTableOrderingComposer get plantId {
    final $$PlantsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.plantId,
      referencedTable: $db.plants,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PlantsTableOrderingComposer(
            $db: $db,
            $table: $db.plants,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TagsTableOrderingComposer get tagId {
    final $$TagsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tagId,
      referencedTable: $db.tags,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TagsTableOrderingComposer(
            $db: $db,
            $table: $db.tags,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PlantsTagsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PlantsTagsTable> {
  $$PlantsTagsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$PlantsTableAnnotationComposer get plantId {
    final $$PlantsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.plantId,
      referencedTable: $db.plants,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PlantsTableAnnotationComposer(
            $db: $db,
            $table: $db.plants,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TagsTableAnnotationComposer get tagId {
    final $$TagsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tagId,
      referencedTable: $db.tags,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TagsTableAnnotationComposer(
            $db: $db,
            $table: $db.tags,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PlantsTagsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PlantsTagsTable,
          PlantsTag,
          $$PlantsTagsTableFilterComposer,
          $$PlantsTagsTableOrderingComposer,
          $$PlantsTagsTableAnnotationComposer,
          $$PlantsTagsTableCreateCompanionBuilder,
          $$PlantsTagsTableUpdateCompanionBuilder,
          (PlantsTag, $$PlantsTagsTableReferences),
          PlantsTag,
          PrefetchHooks Function({bool plantId, bool tagId})
        > {
  $$PlantsTagsTableTableManager(_$AppDatabase db, $PlantsTagsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$PlantsTagsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$PlantsTagsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$PlantsTagsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> plantId = const Value.absent(),
                Value<int> tagId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PlantsTagsCompanion(
                plantId: plantId,
                tagId: tagId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int plantId,
                required int tagId,
                Value<int> rowid = const Value.absent(),
              }) => PlantsTagsCompanion.insert(
                plantId: plantId,
                tagId: tagId,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$PlantsTagsTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({plantId = false, tagId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                T extends TableManagerState<
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic
                >
              >(state) {
                if (plantId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.plantId,
                            referencedTable: $$PlantsTagsTableReferences
                                ._plantIdTable(db),
                            referencedColumn:
                                $$PlantsTagsTableReferences
                                    ._plantIdTable(db)
                                    .id,
                          )
                          as T;
                }
                if (tagId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.tagId,
                            referencedTable: $$PlantsTagsTableReferences
                                ._tagIdTable(db),
                            referencedColumn:
                                $$PlantsTagsTableReferences._tagIdTable(db).id,
                          )
                          as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PlantsTagsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PlantsTagsTable,
      PlantsTag,
      $$PlantsTagsTableFilterComposer,
      $$PlantsTagsTableOrderingComposer,
      $$PlantsTagsTableAnnotationComposer,
      $$PlantsTagsTableCreateCompanionBuilder,
      $$PlantsTagsTableUpdateCompanionBuilder,
      (PlantsTag, $$PlantsTagsTableReferences),
      PlantsTag,
      PrefetchHooks Function({bool plantId, bool tagId})
    >;
typedef $$PlantImagesTableCreateCompanionBuilder =
    PlantImagesCompanion Function({
      Value<int> id,
      required int plantId,
      required String path,
      Value<DateTime> addedAt,
    });
typedef $$PlantImagesTableUpdateCompanionBuilder =
    PlantImagesCompanion Function({
      Value<int> id,
      Value<int> plantId,
      Value<String> path,
      Value<DateTime> addedAt,
    });

final class $$PlantImagesTableReferences
    extends BaseReferences<_$AppDatabase, $PlantImagesTable, PlantImage> {
  $$PlantImagesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PlantsTable _plantIdTable(_$AppDatabase db) => db.plants.createAlias(
    $_aliasNameGenerator(db.plantImages.plantId, db.plants.id),
  );

  $$PlantsTableProcessedTableManager get plantId {
    final $_column = $_itemColumn<int>('plant_id')!;

    final manager = $$PlantsTableTableManager(
      $_db,
      $_db.plants,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_plantIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PlantImagesTableFilterComposer
    extends Composer<_$AppDatabase, $PlantImagesTable> {
  $$PlantImagesTableFilterComposer({
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

  ColumnFilters<String> get path => $composableBuilder(
    column: $table.path,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get addedAt => $composableBuilder(
    column: $table.addedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$PlantsTableFilterComposer get plantId {
    final $$PlantsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.plantId,
      referencedTable: $db.plants,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PlantsTableFilterComposer(
            $db: $db,
            $table: $db.plants,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PlantImagesTableOrderingComposer
    extends Composer<_$AppDatabase, $PlantImagesTable> {
  $$PlantImagesTableOrderingComposer({
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

  ColumnOrderings<String> get path => $composableBuilder(
    column: $table.path,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get addedAt => $composableBuilder(
    column: $table.addedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$PlantsTableOrderingComposer get plantId {
    final $$PlantsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.plantId,
      referencedTable: $db.plants,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PlantsTableOrderingComposer(
            $db: $db,
            $table: $db.plants,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PlantImagesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PlantImagesTable> {
  $$PlantImagesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get path =>
      $composableBuilder(column: $table.path, builder: (column) => column);

  GeneratedColumn<DateTime> get addedAt =>
      $composableBuilder(column: $table.addedAt, builder: (column) => column);

  $$PlantsTableAnnotationComposer get plantId {
    final $$PlantsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.plantId,
      referencedTable: $db.plants,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PlantsTableAnnotationComposer(
            $db: $db,
            $table: $db.plants,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PlantImagesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PlantImagesTable,
          PlantImage,
          $$PlantImagesTableFilterComposer,
          $$PlantImagesTableOrderingComposer,
          $$PlantImagesTableAnnotationComposer,
          $$PlantImagesTableCreateCompanionBuilder,
          $$PlantImagesTableUpdateCompanionBuilder,
          (PlantImage, $$PlantImagesTableReferences),
          PlantImage,
          PrefetchHooks Function({bool plantId})
        > {
  $$PlantImagesTableTableManager(_$AppDatabase db, $PlantImagesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$PlantImagesTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$PlantImagesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () =>
                  $$PlantImagesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> plantId = const Value.absent(),
                Value<String> path = const Value.absent(),
                Value<DateTime> addedAt = const Value.absent(),
              }) => PlantImagesCompanion(
                id: id,
                plantId: plantId,
                path: path,
                addedAt: addedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int plantId,
                required String path,
                Value<DateTime> addedAt = const Value.absent(),
              }) => PlantImagesCompanion.insert(
                id: id,
                plantId: plantId,
                path: path,
                addedAt: addedAt,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$PlantImagesTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({plantId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                T extends TableManagerState<
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic
                >
              >(state) {
                if (plantId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.plantId,
                            referencedTable: $$PlantImagesTableReferences
                                ._plantIdTable(db),
                            referencedColumn:
                                $$PlantImagesTableReferences
                                    ._plantIdTable(db)
                                    .id,
                          )
                          as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PlantImagesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PlantImagesTable,
      PlantImage,
      $$PlantImagesTableFilterComposer,
      $$PlantImagesTableOrderingComposer,
      $$PlantImagesTableAnnotationComposer,
      $$PlantImagesTableCreateCompanionBuilder,
      $$PlantImagesTableUpdateCompanionBuilder,
      (PlantImage, $$PlantImagesTableReferences),
      PlantImage,
      PrefetchHooks Function({bool plantId})
    >;
typedef $$UsersTableCreateCompanionBuilder =
    UsersCompanion Function({
      Value<int> id,
      required String username,
      Value<String?> email,
      Value<String?> password,
      Value<DateTime> createdAt,
    });
typedef $$UsersTableUpdateCompanionBuilder =
    UsersCompanion Function({
      Value<int> id,
      Value<String> username,
      Value<String?> email,
      Value<String?> password,
      Value<DateTime> createdAt,
    });

class $$UsersTableFilterComposer extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableFilterComposer({
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

  ColumnFilters<String> get username => $composableBuilder(
    column: $table.username,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get password => $composableBuilder(
    column: $table.password,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UsersTableOrderingComposer
    extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableOrderingComposer({
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

  ColumnOrderings<String> get username => $composableBuilder(
    column: $table.username,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get password => $composableBuilder(
    column: $table.password,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UsersTableAnnotationComposer
    extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get password =>
      $composableBuilder(column: $table.password, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$UsersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UsersTable,
          User,
          $$UsersTableFilterComposer,
          $$UsersTableOrderingComposer,
          $$UsersTableAnnotationComposer,
          $$UsersTableCreateCompanionBuilder,
          $$UsersTableUpdateCompanionBuilder,
          (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
          User,
          PrefetchHooks Function()
        > {
  $$UsersTableTableManager(_$AppDatabase db, $UsersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$UsersTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$UsersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$UsersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> username = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> password = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => UsersCompanion(
                id: id,
                username: username,
                email: email,
                password: password,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String username,
                Value<String?> email = const Value.absent(),
                Value<String?> password = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => UsersCompanion.insert(
                id: id,
                username: username,
                email: email,
                password: password,
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

typedef $$UsersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UsersTable,
      User,
      $$UsersTableFilterComposer,
      $$UsersTableOrderingComposer,
      $$UsersTableAnnotationComposer,
      $$UsersTableCreateCompanionBuilder,
      $$UsersTableUpdateCompanionBuilder,
      (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
      User,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PlantsTableTableManager get plants =>
      $$PlantsTableTableManager(_db, _db.plants);
  $$TagsTableTableManager get tags => $$TagsTableTableManager(_db, _db.tags);
  $$PlantsTagsTableTableManager get plantsTags =>
      $$PlantsTagsTableTableManager(_db, _db.plantsTags);
  $$PlantImagesTableTableManager get plantImages =>
      $$PlantImagesTableTableManager(_db, _db.plantImages);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
}
