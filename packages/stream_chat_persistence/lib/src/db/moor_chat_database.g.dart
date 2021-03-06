// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_chat_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class ChannelEntity extends DataClass implements Insertable<ChannelEntity> {
  final String id;
  final String type;
  final String cid;
  final Map<String, Object> config;
  final bool frozen;
  final DateTime lastMessageAt;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  final int memberCount;
  final String createdById;
  final Map<String, Object> extraData;
  ChannelEntity(
      {@required this.id,
      @required this.type,
      @required this.cid,
      @required this.config,
      @required this.frozen,
      this.lastMessageAt,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.memberCount,
      this.createdById,
      this.extraData});
  factory ChannelEntity.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final intType = db.typeSystem.forDartType<int>();
    return ChannelEntity(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      type: stringType.mapFromDatabaseResponse(data['${effectivePrefix}type']),
      cid: stringType.mapFromDatabaseResponse(data['${effectivePrefix}cid']),
      config: $ChannelsTable.$converter0.mapToDart(
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}config'])),
      frozen:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}frozen']),
      lastMessageAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_message_at']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
      memberCount: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}member_count']),
      createdById: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_by_id']),
      extraData: $ChannelsTable.$converter1.mapToDart(stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}extra_data'])),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || cid != null) {
      map['cid'] = Variable<String>(cid);
    }
    if (!nullToAbsent || config != null) {
      final converter = $ChannelsTable.$converter0;
      map['config'] = Variable<String>(converter.mapToSql(config));
    }
    if (!nullToAbsent || frozen != null) {
      map['frozen'] = Variable<bool>(frozen);
    }
    if (!nullToAbsent || lastMessageAt != null) {
      map['last_message_at'] = Variable<DateTime>(lastMessageAt);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    if (!nullToAbsent || memberCount != null) {
      map['member_count'] = Variable<int>(memberCount);
    }
    if (!nullToAbsent || createdById != null) {
      map['created_by_id'] = Variable<String>(createdById);
    }
    if (!nullToAbsent || extraData != null) {
      final converter = $ChannelsTable.$converter1;
      map['extra_data'] = Variable<String>(converter.mapToSql(extraData));
    }
    return map;
  }

  factory ChannelEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ChannelEntity(
      id: serializer.fromJson<String>(json['id']),
      type: serializer.fromJson<String>(json['type']),
      cid: serializer.fromJson<String>(json['cid']),
      config: serializer.fromJson<Map<String, Object>>(json['config']),
      frozen: serializer.fromJson<bool>(json['frozen']),
      lastMessageAt: serializer.fromJson<DateTime>(json['lastMessageAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
      memberCount: serializer.fromJson<int>(json['memberCount']),
      createdById: serializer.fromJson<String>(json['createdById']),
      extraData: serializer.fromJson<Map<String, Object>>(json['extraData']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'type': serializer.toJson<String>(type),
      'cid': serializer.toJson<String>(cid),
      'config': serializer.toJson<Map<String, Object>>(config),
      'frozen': serializer.toJson<bool>(frozen),
      'lastMessageAt': serializer.toJson<DateTime>(lastMessageAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
      'memberCount': serializer.toJson<int>(memberCount),
      'createdById': serializer.toJson<String>(createdById),
      'extraData': serializer.toJson<Map<String, Object>>(extraData),
    };
  }

  ChannelEntity copyWith(
          {String id,
          String type,
          String cid,
          Map<String, Object> config,
          bool frozen,
          Value<DateTime> lastMessageAt = const Value.absent(),
          Value<DateTime> createdAt = const Value.absent(),
          Value<DateTime> updatedAt = const Value.absent(),
          Value<DateTime> deletedAt = const Value.absent(),
          Value<int> memberCount = const Value.absent(),
          Value<String> createdById = const Value.absent(),
          Value<Map<String, Object>> extraData = const Value.absent()}) =>
      ChannelEntity(
        id: id ?? this.id,
        type: type ?? this.type,
        cid: cid ?? this.cid,
        config: config ?? this.config,
        frozen: frozen ?? this.frozen,
        lastMessageAt:
            lastMessageAt.present ? lastMessageAt.value : this.lastMessageAt,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
        deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
        memberCount: memberCount.present ? memberCount.value : this.memberCount,
        createdById: createdById.present ? createdById.value : this.createdById,
        extraData: extraData.present ? extraData.value : this.extraData,
      );
  @override
  String toString() {
    return (StringBuffer('ChannelEntity(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('cid: $cid, ')
          ..write('config: $config, ')
          ..write('frozen: $frozen, ')
          ..write('lastMessageAt: $lastMessageAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('memberCount: $memberCount, ')
          ..write('createdById: $createdById, ')
          ..write('extraData: $extraData')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          type.hashCode,
          $mrjc(
              cid.hashCode,
              $mrjc(
                  config.hashCode,
                  $mrjc(
                      frozen.hashCode,
                      $mrjc(
                          lastMessageAt.hashCode,
                          $mrjc(
                              createdAt.hashCode,
                              $mrjc(
                                  updatedAt.hashCode,
                                  $mrjc(
                                      deletedAt.hashCode,
                                      $mrjc(
                                          memberCount.hashCode,
                                          $mrjc(createdById.hashCode,
                                              extraData.hashCode))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ChannelEntity &&
          other.id == this.id &&
          other.type == this.type &&
          other.cid == this.cid &&
          other.config == this.config &&
          other.frozen == this.frozen &&
          other.lastMessageAt == this.lastMessageAt &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.memberCount == this.memberCount &&
          other.createdById == this.createdById &&
          other.extraData == this.extraData);
}

class ChannelsCompanion extends UpdateCompanion<ChannelEntity> {
  final Value<String> id;
  final Value<String> type;
  final Value<String> cid;
  final Value<Map<String, Object>> config;
  final Value<bool> frozen;
  final Value<DateTime> lastMessageAt;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  final Value<int> memberCount;
  final Value<String> createdById;
  final Value<Map<String, Object>> extraData;
  const ChannelsCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.cid = const Value.absent(),
    this.config = const Value.absent(),
    this.frozen = const Value.absent(),
    this.lastMessageAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.memberCount = const Value.absent(),
    this.createdById = const Value.absent(),
    this.extraData = const Value.absent(),
  });
  ChannelsCompanion.insert({
    @required String id,
    @required String type,
    @required String cid,
    @required Map<String, Object> config,
    this.frozen = const Value.absent(),
    this.lastMessageAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.memberCount = const Value.absent(),
    this.createdById = const Value.absent(),
    this.extraData = const Value.absent(),
  })  : id = Value(id),
        type = Value(type),
        cid = Value(cid),
        config = Value(config);
  static Insertable<ChannelEntity> custom({
    Expression<String> id,
    Expression<String> type,
    Expression<String> cid,
    Expression<String> config,
    Expression<bool> frozen,
    Expression<DateTime> lastMessageAt,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
    Expression<DateTime> deletedAt,
    Expression<int> memberCount,
    Expression<String> createdById,
    Expression<String> extraData,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (cid != null) 'cid': cid,
      if (config != null) 'config': config,
      if (frozen != null) 'frozen': frozen,
      if (lastMessageAt != null) 'last_message_at': lastMessageAt,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (memberCount != null) 'member_count': memberCount,
      if (createdById != null) 'created_by_id': createdById,
      if (extraData != null) 'extra_data': extraData,
    });
  }

  ChannelsCompanion copyWith(
      {Value<String> id,
      Value<String> type,
      Value<String> cid,
      Value<Map<String, Object>> config,
      Value<bool> frozen,
      Value<DateTime> lastMessageAt,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt,
      Value<int> memberCount,
      Value<String> createdById,
      Value<Map<String, Object>> extraData}) {
    return ChannelsCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      cid: cid ?? this.cid,
      config: config ?? this.config,
      frozen: frozen ?? this.frozen,
      lastMessageAt: lastMessageAt ?? this.lastMessageAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      memberCount: memberCount ?? this.memberCount,
      createdById: createdById ?? this.createdById,
      extraData: extraData ?? this.extraData,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (cid.present) {
      map['cid'] = Variable<String>(cid.value);
    }
    if (config.present) {
      final converter = $ChannelsTable.$converter0;
      map['config'] = Variable<String>(converter.mapToSql(config.value));
    }
    if (frozen.present) {
      map['frozen'] = Variable<bool>(frozen.value);
    }
    if (lastMessageAt.present) {
      map['last_message_at'] = Variable<DateTime>(lastMessageAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (memberCount.present) {
      map['member_count'] = Variable<int>(memberCount.value);
    }
    if (createdById.present) {
      map['created_by_id'] = Variable<String>(createdById.value);
    }
    if (extraData.present) {
      final converter = $ChannelsTable.$converter1;
      map['extra_data'] = Variable<String>(converter.mapToSql(extraData.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChannelsCompanion(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('cid: $cid, ')
          ..write('config: $config, ')
          ..write('frozen: $frozen, ')
          ..write('lastMessageAt: $lastMessageAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('memberCount: $memberCount, ')
          ..write('createdById: $createdById, ')
          ..write('extraData: $extraData')
          ..write(')'))
        .toString();
  }
}

class $ChannelsTable extends Channels
    with TableInfo<$ChannelsTable, ChannelEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $ChannelsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  GeneratedTextColumn _type;
  @override
  GeneratedTextColumn get type => _type ??= _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn(
      'type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _cidMeta = const VerificationMeta('cid');
  GeneratedTextColumn _cid;
  @override
  GeneratedTextColumn get cid => _cid ??= _constructCid();
  GeneratedTextColumn _constructCid() {
    return GeneratedTextColumn(
      'cid',
      $tableName,
      false,
    );
  }

  final VerificationMeta _configMeta = const VerificationMeta('config');
  GeneratedTextColumn _config;
  @override
  GeneratedTextColumn get config => _config ??= _constructConfig();
  GeneratedTextColumn _constructConfig() {
    return GeneratedTextColumn(
      'config',
      $tableName,
      false,
    );
  }

  final VerificationMeta _frozenMeta = const VerificationMeta('frozen');
  GeneratedBoolColumn _frozen;
  @override
  GeneratedBoolColumn get frozen => _frozen ??= _constructFrozen();
  GeneratedBoolColumn _constructFrozen() {
    return GeneratedBoolColumn('frozen', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _lastMessageAtMeta =
      const VerificationMeta('lastMessageAt');
  GeneratedDateTimeColumn _lastMessageAt;
  @override
  GeneratedDateTimeColumn get lastMessageAt =>
      _lastMessageAt ??= _constructLastMessageAt();
  GeneratedDateTimeColumn _constructLastMessageAt() {
    return GeneratedDateTimeColumn(
      'last_message_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _memberCountMeta =
      const VerificationMeta('memberCount');
  GeneratedIntColumn _memberCount;
  @override
  GeneratedIntColumn get memberCount =>
      _memberCount ??= _constructMemberCount();
  GeneratedIntColumn _constructMemberCount() {
    return GeneratedIntColumn(
      'member_count',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdByIdMeta =
      const VerificationMeta('createdById');
  GeneratedTextColumn _createdById;
  @override
  GeneratedTextColumn get createdById =>
      _createdById ??= _constructCreatedById();
  GeneratedTextColumn _constructCreatedById() {
    return GeneratedTextColumn(
      'created_by_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _extraDataMeta = const VerificationMeta('extraData');
  GeneratedTextColumn _extraData;
  @override
  GeneratedTextColumn get extraData => _extraData ??= _constructExtraData();
  GeneratedTextColumn _constructExtraData() {
    return GeneratedTextColumn(
      'extra_data',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        type,
        cid,
        config,
        frozen,
        lastMessageAt,
        createdAt,
        updatedAt,
        deletedAt,
        memberCount,
        createdById,
        extraData
      ];
  @override
  $ChannelsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'channels';
  @override
  final String actualTableName = 'channels';
  @override
  VerificationContext validateIntegrity(Insertable<ChannelEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type'], _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('cid')) {
      context.handle(
          _cidMeta, cid.isAcceptableOrUnknown(data['cid'], _cidMeta));
    } else if (isInserting) {
      context.missing(_cidMeta);
    }
    context.handle(_configMeta, const VerificationResult.success());
    if (data.containsKey('frozen')) {
      context.handle(_frozenMeta,
          frozen.isAcceptableOrUnknown(data['frozen'], _frozenMeta));
    }
    if (data.containsKey('last_message_at')) {
      context.handle(
          _lastMessageAtMeta,
          lastMessageAt.isAcceptableOrUnknown(
              data['last_message_at'], _lastMessageAtMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    if (data.containsKey('deleted_at')) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableOrUnknown(data['deleted_at'], _deletedAtMeta));
    }
    if (data.containsKey('member_count')) {
      context.handle(
          _memberCountMeta,
          memberCount.isAcceptableOrUnknown(
              data['member_count'], _memberCountMeta));
    }
    if (data.containsKey('created_by_id')) {
      context.handle(
          _createdByIdMeta,
          createdById.isAcceptableOrUnknown(
              data['created_by_id'], _createdByIdMeta));
    }
    context.handle(_extraDataMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cid};
  @override
  ChannelEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ChannelEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ChannelsTable createAlias(String alias) {
    return $ChannelsTable(_db, alias);
  }

  static TypeConverter<Map<String, Object>, String> $converter0 =
      MapConverter<Object>();
  static TypeConverter<Map<String, Object>, String> $converter1 =
      MapConverter<Object>();
}

class MessageEntity extends DataClass implements Insertable<MessageEntity> {
  final String id;
  final String messageText;
  final List<String> attachments;
  final MessageSendingStatus status;
  final String type;
  final List<String> mentionedUsers;
  final Map<String, int> reactionCounts;
  final Map<String, int> reactionScores;
  final String parentId;
  final String quotedMessageId;
  final int replyCount;
  final bool showInChannel;
  final bool shadowed;
  final String command;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  final String userId;
  final String channelCid;
  final Map<String, Object> extraData;
  MessageEntity(
      {@required this.id,
      this.messageText,
      this.attachments,
      this.status,
      this.type,
      this.mentionedUsers,
      this.reactionCounts,
      this.reactionScores,
      this.parentId,
      this.quotedMessageId,
      this.replyCount,
      this.showInChannel,
      this.shadowed,
      this.command,
      @required this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.userId,
      this.channelCid,
      this.extraData});
  factory MessageEntity.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final intType = db.typeSystem.forDartType<int>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return MessageEntity(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      messageText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}message_text']),
      attachments: $MessagesTable.$converter0.mapToDart(stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}attachments'])),
      status: $MessagesTable.$converter1.mapToDart(
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status'])),
      type: stringType.mapFromDatabaseResponse(data['${effectivePrefix}type']),
      mentionedUsers: $MessagesTable.$converter2.mapToDart(stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}mentioned_users'])),
      reactionCounts: $MessagesTable.$converter3.mapToDart(stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reaction_counts'])),
      reactionScores: $MessagesTable.$converter4.mapToDart(stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reaction_scores'])),
      parentId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}parent_id']),
      quotedMessageId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}quoted_message_id']),
      replyCount: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}reply_count']),
      showInChannel: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}show_in_channel']),
      shadowed:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}shadowed']),
      command:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}command']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
      userId:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      channelCid: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}channel_cid']),
      extraData: $MessagesTable.$converter5.mapToDart(stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}extra_data'])),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || messageText != null) {
      map['message_text'] = Variable<String>(messageText);
    }
    if (!nullToAbsent || attachments != null) {
      final converter = $MessagesTable.$converter0;
      map['attachments'] = Variable<String>(converter.mapToSql(attachments));
    }
    if (!nullToAbsent || status != null) {
      final converter = $MessagesTable.$converter1;
      map['status'] = Variable<int>(converter.mapToSql(status));
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || mentionedUsers != null) {
      final converter = $MessagesTable.$converter2;
      map['mentioned_users'] =
          Variable<String>(converter.mapToSql(mentionedUsers));
    }
    if (!nullToAbsent || reactionCounts != null) {
      final converter = $MessagesTable.$converter3;
      map['reaction_counts'] =
          Variable<String>(converter.mapToSql(reactionCounts));
    }
    if (!nullToAbsent || reactionScores != null) {
      final converter = $MessagesTable.$converter4;
      map['reaction_scores'] =
          Variable<String>(converter.mapToSql(reactionScores));
    }
    if (!nullToAbsent || parentId != null) {
      map['parent_id'] = Variable<String>(parentId);
    }
    if (!nullToAbsent || quotedMessageId != null) {
      map['quoted_message_id'] = Variable<String>(quotedMessageId);
    }
    if (!nullToAbsent || replyCount != null) {
      map['reply_count'] = Variable<int>(replyCount);
    }
    if (!nullToAbsent || showInChannel != null) {
      map['show_in_channel'] = Variable<bool>(showInChannel);
    }
    if (!nullToAbsent || shadowed != null) {
      map['shadowed'] = Variable<bool>(shadowed);
    }
    if (!nullToAbsent || command != null) {
      map['command'] = Variable<String>(command);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    if (!nullToAbsent || channelCid != null) {
      map['channel_cid'] = Variable<String>(channelCid);
    }
    if (!nullToAbsent || extraData != null) {
      final converter = $MessagesTable.$converter5;
      map['extra_data'] = Variable<String>(converter.mapToSql(extraData));
    }
    return map;
  }

  factory MessageEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MessageEntity(
      id: serializer.fromJson<String>(json['id']),
      messageText: serializer.fromJson<String>(json['messageText']),
      attachments: serializer.fromJson<List<String>>(json['attachments']),
      status: serializer.fromJson<MessageSendingStatus>(json['status']),
      type: serializer.fromJson<String>(json['type']),
      mentionedUsers: serializer.fromJson<List<String>>(json['mentionedUsers']),
      reactionCounts:
          serializer.fromJson<Map<String, int>>(json['reactionCounts']),
      reactionScores:
          serializer.fromJson<Map<String, int>>(json['reactionScores']),
      parentId: serializer.fromJson<String>(json['parentId']),
      quotedMessageId: serializer.fromJson<String>(json['quotedMessageId']),
      replyCount: serializer.fromJson<int>(json['replyCount']),
      showInChannel: serializer.fromJson<bool>(json['showInChannel']),
      shadowed: serializer.fromJson<bool>(json['shadowed']),
      command: serializer.fromJson<String>(json['command']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
      userId: serializer.fromJson<String>(json['userId']),
      channelCid: serializer.fromJson<String>(json['channelCid']),
      extraData: serializer.fromJson<Map<String, Object>>(json['extraData']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'messageText': serializer.toJson<String>(messageText),
      'attachments': serializer.toJson<List<String>>(attachments),
      'status': serializer.toJson<MessageSendingStatus>(status),
      'type': serializer.toJson<String>(type),
      'mentionedUsers': serializer.toJson<List<String>>(mentionedUsers),
      'reactionCounts': serializer.toJson<Map<String, int>>(reactionCounts),
      'reactionScores': serializer.toJson<Map<String, int>>(reactionScores),
      'parentId': serializer.toJson<String>(parentId),
      'quotedMessageId': serializer.toJson<String>(quotedMessageId),
      'replyCount': serializer.toJson<int>(replyCount),
      'showInChannel': serializer.toJson<bool>(showInChannel),
      'shadowed': serializer.toJson<bool>(shadowed),
      'command': serializer.toJson<String>(command),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
      'userId': serializer.toJson<String>(userId),
      'channelCid': serializer.toJson<String>(channelCid),
      'extraData': serializer.toJson<Map<String, Object>>(extraData),
    };
  }

  MessageEntity copyWith(
          {String id,
          Value<String> messageText = const Value.absent(),
          Value<List<String>> attachments = const Value.absent(),
          Value<MessageSendingStatus> status = const Value.absent(),
          Value<String> type = const Value.absent(),
          Value<List<String>> mentionedUsers = const Value.absent(),
          Value<Map<String, int>> reactionCounts = const Value.absent(),
          Value<Map<String, int>> reactionScores = const Value.absent(),
          Value<String> parentId = const Value.absent(),
          Value<String> quotedMessageId = const Value.absent(),
          Value<int> replyCount = const Value.absent(),
          Value<bool> showInChannel = const Value.absent(),
          Value<bool> shadowed = const Value.absent(),
          Value<String> command = const Value.absent(),
          DateTime createdAt,
          Value<DateTime> updatedAt = const Value.absent(),
          Value<DateTime> deletedAt = const Value.absent(),
          Value<String> userId = const Value.absent(),
          Value<String> channelCid = const Value.absent(),
          Value<Map<String, Object>> extraData = const Value.absent()}) =>
      MessageEntity(
        id: id ?? this.id,
        messageText: messageText.present ? messageText.value : this.messageText,
        attachments: attachments.present ? attachments.value : this.attachments,
        status: status.present ? status.value : this.status,
        type: type.present ? type.value : this.type,
        mentionedUsers:
            mentionedUsers.present ? mentionedUsers.value : this.mentionedUsers,
        reactionCounts:
            reactionCounts.present ? reactionCounts.value : this.reactionCounts,
        reactionScores:
            reactionScores.present ? reactionScores.value : this.reactionScores,
        parentId: parentId.present ? parentId.value : this.parentId,
        quotedMessageId: quotedMessageId.present
            ? quotedMessageId.value
            : this.quotedMessageId,
        replyCount: replyCount.present ? replyCount.value : this.replyCount,
        showInChannel:
            showInChannel.present ? showInChannel.value : this.showInChannel,
        shadowed: shadowed.present ? shadowed.value : this.shadowed,
        command: command.present ? command.value : this.command,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
        deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
        userId: userId.present ? userId.value : this.userId,
        channelCid: channelCid.present ? channelCid.value : this.channelCid,
        extraData: extraData.present ? extraData.value : this.extraData,
      );
  @override
  String toString() {
    return (StringBuffer('MessageEntity(')
          ..write('id: $id, ')
          ..write('messageText: $messageText, ')
          ..write('attachments: $attachments, ')
          ..write('status: $status, ')
          ..write('type: $type, ')
          ..write('mentionedUsers: $mentionedUsers, ')
          ..write('reactionCounts: $reactionCounts, ')
          ..write('reactionScores: $reactionScores, ')
          ..write('parentId: $parentId, ')
          ..write('quotedMessageId: $quotedMessageId, ')
          ..write('replyCount: $replyCount, ')
          ..write('showInChannel: $showInChannel, ')
          ..write('shadowed: $shadowed, ')
          ..write('command: $command, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('userId: $userId, ')
          ..write('channelCid: $channelCid, ')
          ..write('extraData: $extraData')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          messageText.hashCode,
          $mrjc(
              attachments.hashCode,
              $mrjc(
                  status.hashCode,
                  $mrjc(
                      type.hashCode,
                      $mrjc(
                          mentionedUsers.hashCode,
                          $mrjc(
                              reactionCounts.hashCode,
                              $mrjc(
                                  reactionScores.hashCode,
                                  $mrjc(
                                      parentId.hashCode,
                                      $mrjc(
                                          quotedMessageId.hashCode,
                                          $mrjc(
                                              replyCount.hashCode,
                                              $mrjc(
                                                  showInChannel.hashCode,
                                                  $mrjc(
                                                      shadowed.hashCode,
                                                      $mrjc(
                                                          command.hashCode,
                                                          $mrjc(
                                                              createdAt
                                                                  .hashCode,
                                                              $mrjc(
                                                                  updatedAt
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      deletedAt
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          userId
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              channelCid.hashCode,
                                                                              extraData.hashCode))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MessageEntity &&
          other.id == this.id &&
          other.messageText == this.messageText &&
          other.attachments == this.attachments &&
          other.status == this.status &&
          other.type == this.type &&
          other.mentionedUsers == this.mentionedUsers &&
          other.reactionCounts == this.reactionCounts &&
          other.reactionScores == this.reactionScores &&
          other.parentId == this.parentId &&
          other.quotedMessageId == this.quotedMessageId &&
          other.replyCount == this.replyCount &&
          other.showInChannel == this.showInChannel &&
          other.shadowed == this.shadowed &&
          other.command == this.command &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.userId == this.userId &&
          other.channelCid == this.channelCid &&
          other.extraData == this.extraData);
}

class MessagesCompanion extends UpdateCompanion<MessageEntity> {
  final Value<String> id;
  final Value<String> messageText;
  final Value<List<String>> attachments;
  final Value<MessageSendingStatus> status;
  final Value<String> type;
  final Value<List<String>> mentionedUsers;
  final Value<Map<String, int>> reactionCounts;
  final Value<Map<String, int>> reactionScores;
  final Value<String> parentId;
  final Value<String> quotedMessageId;
  final Value<int> replyCount;
  final Value<bool> showInChannel;
  final Value<bool> shadowed;
  final Value<String> command;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  final Value<String> userId;
  final Value<String> channelCid;
  final Value<Map<String, Object>> extraData;
  const MessagesCompanion({
    this.id = const Value.absent(),
    this.messageText = const Value.absent(),
    this.attachments = const Value.absent(),
    this.status = const Value.absent(),
    this.type = const Value.absent(),
    this.mentionedUsers = const Value.absent(),
    this.reactionCounts = const Value.absent(),
    this.reactionScores = const Value.absent(),
    this.parentId = const Value.absent(),
    this.quotedMessageId = const Value.absent(),
    this.replyCount = const Value.absent(),
    this.showInChannel = const Value.absent(),
    this.shadowed = const Value.absent(),
    this.command = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.userId = const Value.absent(),
    this.channelCid = const Value.absent(),
    this.extraData = const Value.absent(),
  });
  MessagesCompanion.insert({
    @required String id,
    this.messageText = const Value.absent(),
    this.attachments = const Value.absent(),
    this.status = const Value.absent(),
    this.type = const Value.absent(),
    this.mentionedUsers = const Value.absent(),
    this.reactionCounts = const Value.absent(),
    this.reactionScores = const Value.absent(),
    this.parentId = const Value.absent(),
    this.quotedMessageId = const Value.absent(),
    this.replyCount = const Value.absent(),
    this.showInChannel = const Value.absent(),
    this.shadowed = const Value.absent(),
    this.command = const Value.absent(),
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.userId = const Value.absent(),
    this.channelCid = const Value.absent(),
    this.extraData = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt);
  static Insertable<MessageEntity> custom({
    Expression<String> id,
    Expression<String> messageText,
    Expression<String> attachments,
    Expression<int> status,
    Expression<String> type,
    Expression<String> mentionedUsers,
    Expression<String> reactionCounts,
    Expression<String> reactionScores,
    Expression<String> parentId,
    Expression<String> quotedMessageId,
    Expression<int> replyCount,
    Expression<bool> showInChannel,
    Expression<bool> shadowed,
    Expression<String> command,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
    Expression<DateTime> deletedAt,
    Expression<String> userId,
    Expression<String> channelCid,
    Expression<String> extraData,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (messageText != null) 'message_text': messageText,
      if (attachments != null) 'attachments': attachments,
      if (status != null) 'status': status,
      if (type != null) 'type': type,
      if (mentionedUsers != null) 'mentioned_users': mentionedUsers,
      if (reactionCounts != null) 'reaction_counts': reactionCounts,
      if (reactionScores != null) 'reaction_scores': reactionScores,
      if (parentId != null) 'parent_id': parentId,
      if (quotedMessageId != null) 'quoted_message_id': quotedMessageId,
      if (replyCount != null) 'reply_count': replyCount,
      if (showInChannel != null) 'show_in_channel': showInChannel,
      if (shadowed != null) 'shadowed': shadowed,
      if (command != null) 'command': command,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (userId != null) 'user_id': userId,
      if (channelCid != null) 'channel_cid': channelCid,
      if (extraData != null) 'extra_data': extraData,
    });
  }

  MessagesCompanion copyWith(
      {Value<String> id,
      Value<String> messageText,
      Value<List<String>> attachments,
      Value<MessageSendingStatus> status,
      Value<String> type,
      Value<List<String>> mentionedUsers,
      Value<Map<String, int>> reactionCounts,
      Value<Map<String, int>> reactionScores,
      Value<String> parentId,
      Value<String> quotedMessageId,
      Value<int> replyCount,
      Value<bool> showInChannel,
      Value<bool> shadowed,
      Value<String> command,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt,
      Value<String> userId,
      Value<String> channelCid,
      Value<Map<String, Object>> extraData}) {
    return MessagesCompanion(
      id: id ?? this.id,
      messageText: messageText ?? this.messageText,
      attachments: attachments ?? this.attachments,
      status: status ?? this.status,
      type: type ?? this.type,
      mentionedUsers: mentionedUsers ?? this.mentionedUsers,
      reactionCounts: reactionCounts ?? this.reactionCounts,
      reactionScores: reactionScores ?? this.reactionScores,
      parentId: parentId ?? this.parentId,
      quotedMessageId: quotedMessageId ?? this.quotedMessageId,
      replyCount: replyCount ?? this.replyCount,
      showInChannel: showInChannel ?? this.showInChannel,
      shadowed: shadowed ?? this.shadowed,
      command: command ?? this.command,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      userId: userId ?? this.userId,
      channelCid: channelCid ?? this.channelCid,
      extraData: extraData ?? this.extraData,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (messageText.present) {
      map['message_text'] = Variable<String>(messageText.value);
    }
    if (attachments.present) {
      final converter = $MessagesTable.$converter0;
      map['attachments'] =
          Variable<String>(converter.mapToSql(attachments.value));
    }
    if (status.present) {
      final converter = $MessagesTable.$converter1;
      map['status'] = Variable<int>(converter.mapToSql(status.value));
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (mentionedUsers.present) {
      final converter = $MessagesTable.$converter2;
      map['mentioned_users'] =
          Variable<String>(converter.mapToSql(mentionedUsers.value));
    }
    if (reactionCounts.present) {
      final converter = $MessagesTable.$converter3;
      map['reaction_counts'] =
          Variable<String>(converter.mapToSql(reactionCounts.value));
    }
    if (reactionScores.present) {
      final converter = $MessagesTable.$converter4;
      map['reaction_scores'] =
          Variable<String>(converter.mapToSql(reactionScores.value));
    }
    if (parentId.present) {
      map['parent_id'] = Variable<String>(parentId.value);
    }
    if (quotedMessageId.present) {
      map['quoted_message_id'] = Variable<String>(quotedMessageId.value);
    }
    if (replyCount.present) {
      map['reply_count'] = Variable<int>(replyCount.value);
    }
    if (showInChannel.present) {
      map['show_in_channel'] = Variable<bool>(showInChannel.value);
    }
    if (shadowed.present) {
      map['shadowed'] = Variable<bool>(shadowed.value);
    }
    if (command.present) {
      map['command'] = Variable<String>(command.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (channelCid.present) {
      map['channel_cid'] = Variable<String>(channelCid.value);
    }
    if (extraData.present) {
      final converter = $MessagesTable.$converter5;
      map['extra_data'] = Variable<String>(converter.mapToSql(extraData.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MessagesCompanion(')
          ..write('id: $id, ')
          ..write('messageText: $messageText, ')
          ..write('attachments: $attachments, ')
          ..write('status: $status, ')
          ..write('type: $type, ')
          ..write('mentionedUsers: $mentionedUsers, ')
          ..write('reactionCounts: $reactionCounts, ')
          ..write('reactionScores: $reactionScores, ')
          ..write('parentId: $parentId, ')
          ..write('quotedMessageId: $quotedMessageId, ')
          ..write('replyCount: $replyCount, ')
          ..write('showInChannel: $showInChannel, ')
          ..write('shadowed: $shadowed, ')
          ..write('command: $command, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('userId: $userId, ')
          ..write('channelCid: $channelCid, ')
          ..write('extraData: $extraData')
          ..write(')'))
        .toString();
  }
}

class $MessagesTable extends Messages
    with TableInfo<$MessagesTable, MessageEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $MessagesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _messageTextMeta =
      const VerificationMeta('messageText');
  GeneratedTextColumn _messageText;
  @override
  GeneratedTextColumn get messageText =>
      _messageText ??= _constructMessageText();
  GeneratedTextColumn _constructMessageText() {
    return GeneratedTextColumn(
      'message_text',
      $tableName,
      true,
    );
  }

  final VerificationMeta _attachmentsMeta =
      const VerificationMeta('attachments');
  GeneratedTextColumn _attachments;
  @override
  GeneratedTextColumn get attachments =>
      _attachments ??= _constructAttachments();
  GeneratedTextColumn _constructAttachments() {
    return GeneratedTextColumn(
      'attachments',
      $tableName,
      true,
    );
  }

  final VerificationMeta _statusMeta = const VerificationMeta('status');
  GeneratedIntColumn _status;
  @override
  GeneratedIntColumn get status => _status ??= _constructStatus();
  GeneratedIntColumn _constructStatus() {
    return GeneratedIntColumn(
      'status',
      $tableName,
      true,
    );
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  GeneratedTextColumn _type;
  @override
  GeneratedTextColumn get type => _type ??= _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn(
      'type',
      $tableName,
      true,
    );
  }

  final VerificationMeta _mentionedUsersMeta =
      const VerificationMeta('mentionedUsers');
  GeneratedTextColumn _mentionedUsers;
  @override
  GeneratedTextColumn get mentionedUsers =>
      _mentionedUsers ??= _constructMentionedUsers();
  GeneratedTextColumn _constructMentionedUsers() {
    return GeneratedTextColumn(
      'mentioned_users',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reactionCountsMeta =
      const VerificationMeta('reactionCounts');
  GeneratedTextColumn _reactionCounts;
  @override
  GeneratedTextColumn get reactionCounts =>
      _reactionCounts ??= _constructReactionCounts();
  GeneratedTextColumn _constructReactionCounts() {
    return GeneratedTextColumn(
      'reaction_counts',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reactionScoresMeta =
      const VerificationMeta('reactionScores');
  GeneratedTextColumn _reactionScores;
  @override
  GeneratedTextColumn get reactionScores =>
      _reactionScores ??= _constructReactionScores();
  GeneratedTextColumn _constructReactionScores() {
    return GeneratedTextColumn(
      'reaction_scores',
      $tableName,
      true,
    );
  }

  final VerificationMeta _parentIdMeta = const VerificationMeta('parentId');
  GeneratedTextColumn _parentId;
  @override
  GeneratedTextColumn get parentId => _parentId ??= _constructParentId();
  GeneratedTextColumn _constructParentId() {
    return GeneratedTextColumn(
      'parent_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _quotedMessageIdMeta =
      const VerificationMeta('quotedMessageId');
  GeneratedTextColumn _quotedMessageId;
  @override
  GeneratedTextColumn get quotedMessageId =>
      _quotedMessageId ??= _constructQuotedMessageId();
  GeneratedTextColumn _constructQuotedMessageId() {
    return GeneratedTextColumn(
      'quoted_message_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _replyCountMeta = const VerificationMeta('replyCount');
  GeneratedIntColumn _replyCount;
  @override
  GeneratedIntColumn get replyCount => _replyCount ??= _constructReplyCount();
  GeneratedIntColumn _constructReplyCount() {
    return GeneratedIntColumn(
      'reply_count',
      $tableName,
      true,
    );
  }

  final VerificationMeta _showInChannelMeta =
      const VerificationMeta('showInChannel');
  GeneratedBoolColumn _showInChannel;
  @override
  GeneratedBoolColumn get showInChannel =>
      _showInChannel ??= _constructShowInChannel();
  GeneratedBoolColumn _constructShowInChannel() {
    return GeneratedBoolColumn(
      'show_in_channel',
      $tableName,
      true,
    );
  }

  final VerificationMeta _shadowedMeta = const VerificationMeta('shadowed');
  GeneratedBoolColumn _shadowed;
  @override
  GeneratedBoolColumn get shadowed => _shadowed ??= _constructShadowed();
  GeneratedBoolColumn _constructShadowed() {
    return GeneratedBoolColumn(
      'shadowed',
      $tableName,
      true,
    );
  }

  final VerificationMeta _commandMeta = const VerificationMeta('command');
  GeneratedTextColumn _command;
  @override
  GeneratedTextColumn get command => _command ??= _constructCommand();
  GeneratedTextColumn _constructCommand() {
    return GeneratedTextColumn(
      'command',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedTextColumn _userId;
  @override
  GeneratedTextColumn get userId => _userId ??= _constructUserId();
  GeneratedTextColumn _constructUserId() {
    return GeneratedTextColumn(
      'user_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _channelCidMeta = const VerificationMeta('channelCid');
  GeneratedTextColumn _channelCid;
  @override
  GeneratedTextColumn get channelCid => _channelCid ??= _constructChannelCid();
  GeneratedTextColumn _constructChannelCid() {
    return GeneratedTextColumn('channel_cid', $tableName, true,
        $customConstraints:
            'NULLABLE REFERENCES channels(cid) ON DELETE CASCADE');
  }

  final VerificationMeta _extraDataMeta = const VerificationMeta('extraData');
  GeneratedTextColumn _extraData;
  @override
  GeneratedTextColumn get extraData => _extraData ??= _constructExtraData();
  GeneratedTextColumn _constructExtraData() {
    return GeneratedTextColumn(
      'extra_data',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        messageText,
        attachments,
        status,
        type,
        mentionedUsers,
        reactionCounts,
        reactionScores,
        parentId,
        quotedMessageId,
        replyCount,
        showInChannel,
        shadowed,
        command,
        createdAt,
        updatedAt,
        deletedAt,
        userId,
        channelCid,
        extraData
      ];
  @override
  $MessagesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'messages';
  @override
  final String actualTableName = 'messages';
  @override
  VerificationContext validateIntegrity(Insertable<MessageEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('message_text')) {
      context.handle(
          _messageTextMeta,
          messageText.isAcceptableOrUnknown(
              data['message_text'], _messageTextMeta));
    }
    context.handle(_attachmentsMeta, const VerificationResult.success());
    context.handle(_statusMeta, const VerificationResult.success());
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type'], _typeMeta));
    }
    context.handle(_mentionedUsersMeta, const VerificationResult.success());
    context.handle(_reactionCountsMeta, const VerificationResult.success());
    context.handle(_reactionScoresMeta, const VerificationResult.success());
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id'], _parentIdMeta));
    }
    if (data.containsKey('quoted_message_id')) {
      context.handle(
          _quotedMessageIdMeta,
          quotedMessageId.isAcceptableOrUnknown(
              data['quoted_message_id'], _quotedMessageIdMeta));
    }
    if (data.containsKey('reply_count')) {
      context.handle(
          _replyCountMeta,
          replyCount.isAcceptableOrUnknown(
              data['reply_count'], _replyCountMeta));
    }
    if (data.containsKey('show_in_channel')) {
      context.handle(
          _showInChannelMeta,
          showInChannel.isAcceptableOrUnknown(
              data['show_in_channel'], _showInChannelMeta));
    }
    if (data.containsKey('shadowed')) {
      context.handle(_shadowedMeta,
          shadowed.isAcceptableOrUnknown(data['shadowed'], _shadowedMeta));
    }
    if (data.containsKey('command')) {
      context.handle(_commandMeta,
          command.isAcceptableOrUnknown(data['command'], _commandMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    if (data.containsKey('deleted_at')) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableOrUnknown(data['deleted_at'], _deletedAtMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id'], _userIdMeta));
    }
    if (data.containsKey('channel_cid')) {
      context.handle(
          _channelCidMeta,
          channelCid.isAcceptableOrUnknown(
              data['channel_cid'], _channelCidMeta));
    }
    context.handle(_extraDataMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MessageEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MessageEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MessagesTable createAlias(String alias) {
    return $MessagesTable(_db, alias);
  }

  static TypeConverter<List<String>, String> $converter0 =
      ListConverter<String>();
  static TypeConverter<MessageSendingStatus, int> $converter1 =
      MessageSendingStatusConverter();
  static TypeConverter<List<String>, String> $converter2 =
      ListConverter<String>();
  static TypeConverter<Map<String, int>, String> $converter3 =
      MapConverter<int>();
  static TypeConverter<Map<String, int>, String> $converter4 =
      MapConverter<int>();
  static TypeConverter<Map<String, Object>, String> $converter5 =
      MapConverter<Object>();
}

class ReactionEntity extends DataClass implements Insertable<ReactionEntity> {
  final String userId;
  final String messageId;
  final String type;
  final DateTime createdAt;
  final int score;
  final Map<String, Object> extraData;
  ReactionEntity(
      {@required this.userId,
      @required this.messageId,
      @required this.type,
      @required this.createdAt,
      this.score,
      this.extraData});
  factory ReactionEntity.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final intType = db.typeSystem.forDartType<int>();
    return ReactionEntity(
      userId:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      messageId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}message_id']),
      type: stringType.mapFromDatabaseResponse(data['${effectivePrefix}type']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      score: intType.mapFromDatabaseResponse(data['${effectivePrefix}score']),
      extraData: $ReactionsTable.$converter0.mapToDart(stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}extra_data'])),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    if (!nullToAbsent || messageId != null) {
      map['message_id'] = Variable<String>(messageId);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || score != null) {
      map['score'] = Variable<int>(score);
    }
    if (!nullToAbsent || extraData != null) {
      final converter = $ReactionsTable.$converter0;
      map['extra_data'] = Variable<String>(converter.mapToSql(extraData));
    }
    return map;
  }

  factory ReactionEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ReactionEntity(
      userId: serializer.fromJson<String>(json['userId']),
      messageId: serializer.fromJson<String>(json['messageId']),
      type: serializer.fromJson<String>(json['type']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      score: serializer.fromJson<int>(json['score']),
      extraData: serializer.fromJson<Map<String, Object>>(json['extraData']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'messageId': serializer.toJson<String>(messageId),
      'type': serializer.toJson<String>(type),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'score': serializer.toJson<int>(score),
      'extraData': serializer.toJson<Map<String, Object>>(extraData),
    };
  }

  ReactionEntity copyWith(
          {String userId,
          String messageId,
          String type,
          DateTime createdAt,
          Value<int> score = const Value.absent(),
          Value<Map<String, Object>> extraData = const Value.absent()}) =>
      ReactionEntity(
        userId: userId ?? this.userId,
        messageId: messageId ?? this.messageId,
        type: type ?? this.type,
        createdAt: createdAt ?? this.createdAt,
        score: score.present ? score.value : this.score,
        extraData: extraData.present ? extraData.value : this.extraData,
      );
  @override
  String toString() {
    return (StringBuffer('ReactionEntity(')
          ..write('userId: $userId, ')
          ..write('messageId: $messageId, ')
          ..write('type: $type, ')
          ..write('createdAt: $createdAt, ')
          ..write('score: $score, ')
          ..write('extraData: $extraData')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      userId.hashCode,
      $mrjc(
          messageId.hashCode,
          $mrjc(
              type.hashCode,
              $mrjc(createdAt.hashCode,
                  $mrjc(score.hashCode, extraData.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ReactionEntity &&
          other.userId == this.userId &&
          other.messageId == this.messageId &&
          other.type == this.type &&
          other.createdAt == this.createdAt &&
          other.score == this.score &&
          other.extraData == this.extraData);
}

class ReactionsCompanion extends UpdateCompanion<ReactionEntity> {
  final Value<String> userId;
  final Value<String> messageId;
  final Value<String> type;
  final Value<DateTime> createdAt;
  final Value<int> score;
  final Value<Map<String, Object>> extraData;
  const ReactionsCompanion({
    this.userId = const Value.absent(),
    this.messageId = const Value.absent(),
    this.type = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.score = const Value.absent(),
    this.extraData = const Value.absent(),
  });
  ReactionsCompanion.insert({
    @required String userId,
    @required String messageId,
    @required String type,
    @required DateTime createdAt,
    this.score = const Value.absent(),
    this.extraData = const Value.absent(),
  })  : userId = Value(userId),
        messageId = Value(messageId),
        type = Value(type),
        createdAt = Value(createdAt);
  static Insertable<ReactionEntity> custom({
    Expression<String> userId,
    Expression<String> messageId,
    Expression<String> type,
    Expression<DateTime> createdAt,
    Expression<int> score,
    Expression<String> extraData,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (messageId != null) 'message_id': messageId,
      if (type != null) 'type': type,
      if (createdAt != null) 'created_at': createdAt,
      if (score != null) 'score': score,
      if (extraData != null) 'extra_data': extraData,
    });
  }

  ReactionsCompanion copyWith(
      {Value<String> userId,
      Value<String> messageId,
      Value<String> type,
      Value<DateTime> createdAt,
      Value<int> score,
      Value<Map<String, Object>> extraData}) {
    return ReactionsCompanion(
      userId: userId ?? this.userId,
      messageId: messageId ?? this.messageId,
      type: type ?? this.type,
      createdAt: createdAt ?? this.createdAt,
      score: score ?? this.score,
      extraData: extraData ?? this.extraData,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (messageId.present) {
      map['message_id'] = Variable<String>(messageId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (score.present) {
      map['score'] = Variable<int>(score.value);
    }
    if (extraData.present) {
      final converter = $ReactionsTable.$converter0;
      map['extra_data'] = Variable<String>(converter.mapToSql(extraData.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReactionsCompanion(')
          ..write('userId: $userId, ')
          ..write('messageId: $messageId, ')
          ..write('type: $type, ')
          ..write('createdAt: $createdAt, ')
          ..write('score: $score, ')
          ..write('extraData: $extraData')
          ..write(')'))
        .toString();
  }
}

class $ReactionsTable extends Reactions
    with TableInfo<$ReactionsTable, ReactionEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $ReactionsTable(this._db, [this._alias]);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedTextColumn _userId;
  @override
  GeneratedTextColumn get userId => _userId ??= _constructUserId();
  GeneratedTextColumn _constructUserId() {
    return GeneratedTextColumn(
      'user_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _messageIdMeta = const VerificationMeta('messageId');
  GeneratedTextColumn _messageId;
  @override
  GeneratedTextColumn get messageId => _messageId ??= _constructMessageId();
  GeneratedTextColumn _constructMessageId() {
    return GeneratedTextColumn('message_id', $tableName, false,
        $customConstraints: 'REFERENCES messages(id) ON DELETE CASCADE');
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  GeneratedTextColumn _type;
  @override
  GeneratedTextColumn get type => _type ??= _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn(
      'type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _scoreMeta = const VerificationMeta('score');
  GeneratedIntColumn _score;
  @override
  GeneratedIntColumn get score => _score ??= _constructScore();
  GeneratedIntColumn _constructScore() {
    return GeneratedIntColumn(
      'score',
      $tableName,
      true,
    );
  }

  final VerificationMeta _extraDataMeta = const VerificationMeta('extraData');
  GeneratedTextColumn _extraData;
  @override
  GeneratedTextColumn get extraData => _extraData ??= _constructExtraData();
  GeneratedTextColumn _constructExtraData() {
    return GeneratedTextColumn(
      'extra_data',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [userId, messageId, type, createdAt, score, extraData];
  @override
  $ReactionsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'reactions';
  @override
  final String actualTableName = 'reactions';
  @override
  VerificationContext validateIntegrity(Insertable<ReactionEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id'], _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('message_id')) {
      context.handle(_messageIdMeta,
          messageId.isAcceptableOrUnknown(data['message_id'], _messageIdMeta));
    } else if (isInserting) {
      context.missing(_messageIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type'], _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('score')) {
      context.handle(
          _scoreMeta, score.isAcceptableOrUnknown(data['score'], _scoreMeta));
    }
    context.handle(_extraDataMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {messageId, type, userId};
  @override
  ReactionEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ReactionEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ReactionsTable createAlias(String alias) {
    return $ReactionsTable(_db, alias);
  }

  static TypeConverter<Map<String, Object>, String> $converter0 =
      MapConverter<Object>();
}

class UserEntity extends DataClass implements Insertable<UserEntity> {
  final String id;
  final String role;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime lastActive;
  final bool online;
  final bool banned;
  final Map<String, Object> extraData;
  UserEntity(
      {@required this.id,
      this.role,
      this.createdAt,
      this.updatedAt,
      this.lastActive,
      this.online,
      this.banned,
      this.extraData});
  factory UserEntity.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return UserEntity(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      role: stringType.mapFromDatabaseResponse(data['${effectivePrefix}role']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      lastActive: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_active']),
      online:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}online']),
      banned:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}banned']),
      extraData: $UsersTable.$converter0.mapToDart(stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}extra_data'])),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || role != null) {
      map['role'] = Variable<String>(role);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || lastActive != null) {
      map['last_active'] = Variable<DateTime>(lastActive);
    }
    if (!nullToAbsent || online != null) {
      map['online'] = Variable<bool>(online);
    }
    if (!nullToAbsent || banned != null) {
      map['banned'] = Variable<bool>(banned);
    }
    if (!nullToAbsent || extraData != null) {
      final converter = $UsersTable.$converter0;
      map['extra_data'] = Variable<String>(converter.mapToSql(extraData));
    }
    return map;
  }

  factory UserEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserEntity(
      id: serializer.fromJson<String>(json['id']),
      role: serializer.fromJson<String>(json['role']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      lastActive: serializer.fromJson<DateTime>(json['lastActive']),
      online: serializer.fromJson<bool>(json['online']),
      banned: serializer.fromJson<bool>(json['banned']),
      extraData: serializer.fromJson<Map<String, Object>>(json['extraData']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'role': serializer.toJson<String>(role),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'lastActive': serializer.toJson<DateTime>(lastActive),
      'online': serializer.toJson<bool>(online),
      'banned': serializer.toJson<bool>(banned),
      'extraData': serializer.toJson<Map<String, Object>>(extraData),
    };
  }

  UserEntity copyWith(
          {String id,
          Value<String> role = const Value.absent(),
          Value<DateTime> createdAt = const Value.absent(),
          Value<DateTime> updatedAt = const Value.absent(),
          Value<DateTime> lastActive = const Value.absent(),
          Value<bool> online = const Value.absent(),
          Value<bool> banned = const Value.absent(),
          Value<Map<String, Object>> extraData = const Value.absent()}) =>
      UserEntity(
        id: id ?? this.id,
        role: role.present ? role.value : this.role,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
        lastActive: lastActive.present ? lastActive.value : this.lastActive,
        online: online.present ? online.value : this.online,
        banned: banned.present ? banned.value : this.banned,
        extraData: extraData.present ? extraData.value : this.extraData,
      );
  @override
  String toString() {
    return (StringBuffer('UserEntity(')
          ..write('id: $id, ')
          ..write('role: $role, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('lastActive: $lastActive, ')
          ..write('online: $online, ')
          ..write('banned: $banned, ')
          ..write('extraData: $extraData')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          role.hashCode,
          $mrjc(
              createdAt.hashCode,
              $mrjc(
                  updatedAt.hashCode,
                  $mrjc(
                      lastActive.hashCode,
                      $mrjc(online.hashCode,
                          $mrjc(banned.hashCode, extraData.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is UserEntity &&
          other.id == this.id &&
          other.role == this.role &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.lastActive == this.lastActive &&
          other.online == this.online &&
          other.banned == this.banned &&
          other.extraData == this.extraData);
}

class UsersCompanion extends UpdateCompanion<UserEntity> {
  final Value<String> id;
  final Value<String> role;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> lastActive;
  final Value<bool> online;
  final Value<bool> banned;
  final Value<Map<String, Object>> extraData;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.role = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.lastActive = const Value.absent(),
    this.online = const Value.absent(),
    this.banned = const Value.absent(),
    this.extraData = const Value.absent(),
  });
  UsersCompanion.insert({
    @required String id,
    this.role = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.lastActive = const Value.absent(),
    this.online = const Value.absent(),
    this.banned = const Value.absent(),
    this.extraData = const Value.absent(),
  }) : id = Value(id);
  static Insertable<UserEntity> custom({
    Expression<String> id,
    Expression<String> role,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
    Expression<DateTime> lastActive,
    Expression<bool> online,
    Expression<bool> banned,
    Expression<String> extraData,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (role != null) 'role': role,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (lastActive != null) 'last_active': lastActive,
      if (online != null) 'online': online,
      if (banned != null) 'banned': banned,
      if (extraData != null) 'extra_data': extraData,
    });
  }

  UsersCompanion copyWith(
      {Value<String> id,
      Value<String> role,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> lastActive,
      Value<bool> online,
      Value<bool> banned,
      Value<Map<String, Object>> extraData}) {
    return UsersCompanion(
      id: id ?? this.id,
      role: role ?? this.role,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      lastActive: lastActive ?? this.lastActive,
      online: online ?? this.online,
      banned: banned ?? this.banned,
      extraData: extraData ?? this.extraData,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(role.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (lastActive.present) {
      map['last_active'] = Variable<DateTime>(lastActive.value);
    }
    if (online.present) {
      map['online'] = Variable<bool>(online.value);
    }
    if (banned.present) {
      map['banned'] = Variable<bool>(banned.value);
    }
    if (extraData.present) {
      final converter = $UsersTable.$converter0;
      map['extra_data'] = Variable<String>(converter.mapToSql(extraData.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('role: $role, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('lastActive: $lastActive, ')
          ..write('online: $online, ')
          ..write('banned: $banned, ')
          ..write('extraData: $extraData')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, UserEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _roleMeta = const VerificationMeta('role');
  GeneratedTextColumn _role;
  @override
  GeneratedTextColumn get role => _role ??= _constructRole();
  GeneratedTextColumn _constructRole() {
    return GeneratedTextColumn(
      'role',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastActiveMeta = const VerificationMeta('lastActive');
  GeneratedDateTimeColumn _lastActive;
  @override
  GeneratedDateTimeColumn get lastActive =>
      _lastActive ??= _constructLastActive();
  GeneratedDateTimeColumn _constructLastActive() {
    return GeneratedDateTimeColumn(
      'last_active',
      $tableName,
      true,
    );
  }

  final VerificationMeta _onlineMeta = const VerificationMeta('online');
  GeneratedBoolColumn _online;
  @override
  GeneratedBoolColumn get online => _online ??= _constructOnline();
  GeneratedBoolColumn _constructOnline() {
    return GeneratedBoolColumn(
      'online',
      $tableName,
      true,
    );
  }

  final VerificationMeta _bannedMeta = const VerificationMeta('banned');
  GeneratedBoolColumn _banned;
  @override
  GeneratedBoolColumn get banned => _banned ??= _constructBanned();
  GeneratedBoolColumn _constructBanned() {
    return GeneratedBoolColumn(
      'banned',
      $tableName,
      true,
    );
  }

  final VerificationMeta _extraDataMeta = const VerificationMeta('extraData');
  GeneratedTextColumn _extraData;
  @override
  GeneratedTextColumn get extraData => _extraData ??= _constructExtraData();
  GeneratedTextColumn _constructExtraData() {
    return GeneratedTextColumn(
      'extra_data',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, role, createdAt, updatedAt, lastActive, online, banned, extraData];
  @override
  $UsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'users';
  @override
  final String actualTableName = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<UserEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('role')) {
      context.handle(
          _roleMeta, role.isAcceptableOrUnknown(data['role'], _roleMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    if (data.containsKey('last_active')) {
      context.handle(
          _lastActiveMeta,
          lastActive.isAcceptableOrUnknown(
              data['last_active'], _lastActiveMeta));
    }
    if (data.containsKey('online')) {
      context.handle(_onlineMeta,
          online.isAcceptableOrUnknown(data['online'], _onlineMeta));
    }
    if (data.containsKey('banned')) {
      context.handle(_bannedMeta,
          banned.isAcceptableOrUnknown(data['banned'], _bannedMeta));
    }
    context.handle(_extraDataMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UserEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }

  static TypeConverter<Map<String, Object>, String> $converter0 =
      MapConverter<Object>();
}

class MemberEntity extends DataClass implements Insertable<MemberEntity> {
  final String userId;
  final String channelCid;
  final String role;
  final DateTime inviteAcceptedAt;
  final DateTime inviteRejectedAt;
  final bool invited;
  final bool banned;
  final bool shadowBanned;
  final bool isModerator;
  final DateTime createdAt;
  final DateTime updatedAt;
  MemberEntity(
      {@required this.userId,
      @required this.channelCid,
      this.role,
      this.inviteAcceptedAt,
      this.inviteRejectedAt,
      this.invited,
      this.banned,
      this.shadowBanned,
      this.isModerator,
      @required this.createdAt,
      this.updatedAt});
  factory MemberEntity.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return MemberEntity(
      userId:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      channelCid: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}channel_cid']),
      role: stringType.mapFromDatabaseResponse(data['${effectivePrefix}role']),
      inviteAcceptedAt: dateTimeType.mapFromDatabaseResponse(
          data['${effectivePrefix}invite_accepted_at']),
      inviteRejectedAt: dateTimeType.mapFromDatabaseResponse(
          data['${effectivePrefix}invite_rejected_at']),
      invited:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}invited']),
      banned:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}banned']),
      shadowBanned: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}shadow_banned']),
      isModerator: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_moderator']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    if (!nullToAbsent || channelCid != null) {
      map['channel_cid'] = Variable<String>(channelCid);
    }
    if (!nullToAbsent || role != null) {
      map['role'] = Variable<String>(role);
    }
    if (!nullToAbsent || inviteAcceptedAt != null) {
      map['invite_accepted_at'] = Variable<DateTime>(inviteAcceptedAt);
    }
    if (!nullToAbsent || inviteRejectedAt != null) {
      map['invite_rejected_at'] = Variable<DateTime>(inviteRejectedAt);
    }
    if (!nullToAbsent || invited != null) {
      map['invited'] = Variable<bool>(invited);
    }
    if (!nullToAbsent || banned != null) {
      map['banned'] = Variable<bool>(banned);
    }
    if (!nullToAbsent || shadowBanned != null) {
      map['shadow_banned'] = Variable<bool>(shadowBanned);
    }
    if (!nullToAbsent || isModerator != null) {
      map['is_moderator'] = Variable<bool>(isModerator);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  factory MemberEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MemberEntity(
      userId: serializer.fromJson<String>(json['userId']),
      channelCid: serializer.fromJson<String>(json['channelCid']),
      role: serializer.fromJson<String>(json['role']),
      inviteAcceptedAt: serializer.fromJson<DateTime>(json['inviteAcceptedAt']),
      inviteRejectedAt: serializer.fromJson<DateTime>(json['inviteRejectedAt']),
      invited: serializer.fromJson<bool>(json['invited']),
      banned: serializer.fromJson<bool>(json['banned']),
      shadowBanned: serializer.fromJson<bool>(json['shadowBanned']),
      isModerator: serializer.fromJson<bool>(json['isModerator']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'channelCid': serializer.toJson<String>(channelCid),
      'role': serializer.toJson<String>(role),
      'inviteAcceptedAt': serializer.toJson<DateTime>(inviteAcceptedAt),
      'inviteRejectedAt': serializer.toJson<DateTime>(inviteRejectedAt),
      'invited': serializer.toJson<bool>(invited),
      'banned': serializer.toJson<bool>(banned),
      'shadowBanned': serializer.toJson<bool>(shadowBanned),
      'isModerator': serializer.toJson<bool>(isModerator),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  MemberEntity copyWith(
          {String userId,
          String channelCid,
          Value<String> role = const Value.absent(),
          Value<DateTime> inviteAcceptedAt = const Value.absent(),
          Value<DateTime> inviteRejectedAt = const Value.absent(),
          Value<bool> invited = const Value.absent(),
          Value<bool> banned = const Value.absent(),
          Value<bool> shadowBanned = const Value.absent(),
          Value<bool> isModerator = const Value.absent(),
          DateTime createdAt,
          Value<DateTime> updatedAt = const Value.absent()}) =>
      MemberEntity(
        userId: userId ?? this.userId,
        channelCid: channelCid ?? this.channelCid,
        role: role.present ? role.value : this.role,
        inviteAcceptedAt: inviteAcceptedAt.present
            ? inviteAcceptedAt.value
            : this.inviteAcceptedAt,
        inviteRejectedAt: inviteRejectedAt.present
            ? inviteRejectedAt.value
            : this.inviteRejectedAt,
        invited: invited.present ? invited.value : this.invited,
        banned: banned.present ? banned.value : this.banned,
        shadowBanned:
            shadowBanned.present ? shadowBanned.value : this.shadowBanned,
        isModerator: isModerator.present ? isModerator.value : this.isModerator,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('MemberEntity(')
          ..write('userId: $userId, ')
          ..write('channelCid: $channelCid, ')
          ..write('role: $role, ')
          ..write('inviteAcceptedAt: $inviteAcceptedAt, ')
          ..write('inviteRejectedAt: $inviteRejectedAt, ')
          ..write('invited: $invited, ')
          ..write('banned: $banned, ')
          ..write('shadowBanned: $shadowBanned, ')
          ..write('isModerator: $isModerator, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      userId.hashCode,
      $mrjc(
          channelCid.hashCode,
          $mrjc(
              role.hashCode,
              $mrjc(
                  inviteAcceptedAt.hashCode,
                  $mrjc(
                      inviteRejectedAt.hashCode,
                      $mrjc(
                          invited.hashCode,
                          $mrjc(
                              banned.hashCode,
                              $mrjc(
                                  shadowBanned.hashCode,
                                  $mrjc(
                                      isModerator.hashCode,
                                      $mrjc(createdAt.hashCode,
                                          updatedAt.hashCode)))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MemberEntity &&
          other.userId == this.userId &&
          other.channelCid == this.channelCid &&
          other.role == this.role &&
          other.inviteAcceptedAt == this.inviteAcceptedAt &&
          other.inviteRejectedAt == this.inviteRejectedAt &&
          other.invited == this.invited &&
          other.banned == this.banned &&
          other.shadowBanned == this.shadowBanned &&
          other.isModerator == this.isModerator &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class MembersCompanion extends UpdateCompanion<MemberEntity> {
  final Value<String> userId;
  final Value<String> channelCid;
  final Value<String> role;
  final Value<DateTime> inviteAcceptedAt;
  final Value<DateTime> inviteRejectedAt;
  final Value<bool> invited;
  final Value<bool> banned;
  final Value<bool> shadowBanned;
  final Value<bool> isModerator;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const MembersCompanion({
    this.userId = const Value.absent(),
    this.channelCid = const Value.absent(),
    this.role = const Value.absent(),
    this.inviteAcceptedAt = const Value.absent(),
    this.inviteRejectedAt = const Value.absent(),
    this.invited = const Value.absent(),
    this.banned = const Value.absent(),
    this.shadowBanned = const Value.absent(),
    this.isModerator = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  MembersCompanion.insert({
    @required String userId,
    @required String channelCid,
    this.role = const Value.absent(),
    this.inviteAcceptedAt = const Value.absent(),
    this.inviteRejectedAt = const Value.absent(),
    this.invited = const Value.absent(),
    this.banned = const Value.absent(),
    this.shadowBanned = const Value.absent(),
    this.isModerator = const Value.absent(),
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : userId = Value(userId),
        channelCid = Value(channelCid),
        createdAt = Value(createdAt);
  static Insertable<MemberEntity> custom({
    Expression<String> userId,
    Expression<String> channelCid,
    Expression<String> role,
    Expression<DateTime> inviteAcceptedAt,
    Expression<DateTime> inviteRejectedAt,
    Expression<bool> invited,
    Expression<bool> banned,
    Expression<bool> shadowBanned,
    Expression<bool> isModerator,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (channelCid != null) 'channel_cid': channelCid,
      if (role != null) 'role': role,
      if (inviteAcceptedAt != null) 'invite_accepted_at': inviteAcceptedAt,
      if (inviteRejectedAt != null) 'invite_rejected_at': inviteRejectedAt,
      if (invited != null) 'invited': invited,
      if (banned != null) 'banned': banned,
      if (shadowBanned != null) 'shadow_banned': shadowBanned,
      if (isModerator != null) 'is_moderator': isModerator,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  MembersCompanion copyWith(
      {Value<String> userId,
      Value<String> channelCid,
      Value<String> role,
      Value<DateTime> inviteAcceptedAt,
      Value<DateTime> inviteRejectedAt,
      Value<bool> invited,
      Value<bool> banned,
      Value<bool> shadowBanned,
      Value<bool> isModerator,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return MembersCompanion(
      userId: userId ?? this.userId,
      channelCid: channelCid ?? this.channelCid,
      role: role ?? this.role,
      inviteAcceptedAt: inviteAcceptedAt ?? this.inviteAcceptedAt,
      inviteRejectedAt: inviteRejectedAt ?? this.inviteRejectedAt,
      invited: invited ?? this.invited,
      banned: banned ?? this.banned,
      shadowBanned: shadowBanned ?? this.shadowBanned,
      isModerator: isModerator ?? this.isModerator,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (channelCid.present) {
      map['channel_cid'] = Variable<String>(channelCid.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(role.value);
    }
    if (inviteAcceptedAt.present) {
      map['invite_accepted_at'] = Variable<DateTime>(inviteAcceptedAt.value);
    }
    if (inviteRejectedAt.present) {
      map['invite_rejected_at'] = Variable<DateTime>(inviteRejectedAt.value);
    }
    if (invited.present) {
      map['invited'] = Variable<bool>(invited.value);
    }
    if (banned.present) {
      map['banned'] = Variable<bool>(banned.value);
    }
    if (shadowBanned.present) {
      map['shadow_banned'] = Variable<bool>(shadowBanned.value);
    }
    if (isModerator.present) {
      map['is_moderator'] = Variable<bool>(isModerator.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MembersCompanion(')
          ..write('userId: $userId, ')
          ..write('channelCid: $channelCid, ')
          ..write('role: $role, ')
          ..write('inviteAcceptedAt: $inviteAcceptedAt, ')
          ..write('inviteRejectedAt: $inviteRejectedAt, ')
          ..write('invited: $invited, ')
          ..write('banned: $banned, ')
          ..write('shadowBanned: $shadowBanned, ')
          ..write('isModerator: $isModerator, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $MembersTable extends Members
    with TableInfo<$MembersTable, MemberEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $MembersTable(this._db, [this._alias]);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedTextColumn _userId;
  @override
  GeneratedTextColumn get userId => _userId ??= _constructUserId();
  GeneratedTextColumn _constructUserId() {
    return GeneratedTextColumn(
      'user_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _channelCidMeta = const VerificationMeta('channelCid');
  GeneratedTextColumn _channelCid;
  @override
  GeneratedTextColumn get channelCid => _channelCid ??= _constructChannelCid();
  GeneratedTextColumn _constructChannelCid() {
    return GeneratedTextColumn('channel_cid', $tableName, false,
        $customConstraints: 'REFERENCES channels(cid) ON DELETE CASCADE');
  }

  final VerificationMeta _roleMeta = const VerificationMeta('role');
  GeneratedTextColumn _role;
  @override
  GeneratedTextColumn get role => _role ??= _constructRole();
  GeneratedTextColumn _constructRole() {
    return GeneratedTextColumn(
      'role',
      $tableName,
      true,
    );
  }

  final VerificationMeta _inviteAcceptedAtMeta =
      const VerificationMeta('inviteAcceptedAt');
  GeneratedDateTimeColumn _inviteAcceptedAt;
  @override
  GeneratedDateTimeColumn get inviteAcceptedAt =>
      _inviteAcceptedAt ??= _constructInviteAcceptedAt();
  GeneratedDateTimeColumn _constructInviteAcceptedAt() {
    return GeneratedDateTimeColumn(
      'invite_accepted_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _inviteRejectedAtMeta =
      const VerificationMeta('inviteRejectedAt');
  GeneratedDateTimeColumn _inviteRejectedAt;
  @override
  GeneratedDateTimeColumn get inviteRejectedAt =>
      _inviteRejectedAt ??= _constructInviteRejectedAt();
  GeneratedDateTimeColumn _constructInviteRejectedAt() {
    return GeneratedDateTimeColumn(
      'invite_rejected_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _invitedMeta = const VerificationMeta('invited');
  GeneratedBoolColumn _invited;
  @override
  GeneratedBoolColumn get invited => _invited ??= _constructInvited();
  GeneratedBoolColumn _constructInvited() {
    return GeneratedBoolColumn(
      'invited',
      $tableName,
      true,
    );
  }

  final VerificationMeta _bannedMeta = const VerificationMeta('banned');
  GeneratedBoolColumn _banned;
  @override
  GeneratedBoolColumn get banned => _banned ??= _constructBanned();
  GeneratedBoolColumn _constructBanned() {
    return GeneratedBoolColumn(
      'banned',
      $tableName,
      true,
    );
  }

  final VerificationMeta _shadowBannedMeta =
      const VerificationMeta('shadowBanned');
  GeneratedBoolColumn _shadowBanned;
  @override
  GeneratedBoolColumn get shadowBanned =>
      _shadowBanned ??= _constructShadowBanned();
  GeneratedBoolColumn _constructShadowBanned() {
    return GeneratedBoolColumn(
      'shadow_banned',
      $tableName,
      true,
    );
  }

  final VerificationMeta _isModeratorMeta =
      const VerificationMeta('isModerator');
  GeneratedBoolColumn _isModerator;
  @override
  GeneratedBoolColumn get isModerator =>
      _isModerator ??= _constructIsModerator();
  GeneratedBoolColumn _constructIsModerator() {
    return GeneratedBoolColumn(
      'is_moderator',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        userId,
        channelCid,
        role,
        inviteAcceptedAt,
        inviteRejectedAt,
        invited,
        banned,
        shadowBanned,
        isModerator,
        createdAt,
        updatedAt
      ];
  @override
  $MembersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'members';
  @override
  final String actualTableName = 'members';
  @override
  VerificationContext validateIntegrity(Insertable<MemberEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id'], _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('channel_cid')) {
      context.handle(
          _channelCidMeta,
          channelCid.isAcceptableOrUnknown(
              data['channel_cid'], _channelCidMeta));
    } else if (isInserting) {
      context.missing(_channelCidMeta);
    }
    if (data.containsKey('role')) {
      context.handle(
          _roleMeta, role.isAcceptableOrUnknown(data['role'], _roleMeta));
    }
    if (data.containsKey('invite_accepted_at')) {
      context.handle(
          _inviteAcceptedAtMeta,
          inviteAcceptedAt.isAcceptableOrUnknown(
              data['invite_accepted_at'], _inviteAcceptedAtMeta));
    }
    if (data.containsKey('invite_rejected_at')) {
      context.handle(
          _inviteRejectedAtMeta,
          inviteRejectedAt.isAcceptableOrUnknown(
              data['invite_rejected_at'], _inviteRejectedAtMeta));
    }
    if (data.containsKey('invited')) {
      context.handle(_invitedMeta,
          invited.isAcceptableOrUnknown(data['invited'], _invitedMeta));
    }
    if (data.containsKey('banned')) {
      context.handle(_bannedMeta,
          banned.isAcceptableOrUnknown(data['banned'], _bannedMeta));
    }
    if (data.containsKey('shadow_banned')) {
      context.handle(
          _shadowBannedMeta,
          shadowBanned.isAcceptableOrUnknown(
              data['shadow_banned'], _shadowBannedMeta));
    }
    if (data.containsKey('is_moderator')) {
      context.handle(
          _isModeratorMeta,
          isModerator.isAcceptableOrUnknown(
              data['is_moderator'], _isModeratorMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId, channelCid};
  @override
  MemberEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MemberEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MembersTable createAlias(String alias) {
    return $MembersTable(_db, alias);
  }
}

class ReadEntity extends DataClass implements Insertable<ReadEntity> {
  final DateTime lastRead;
  final String userId;
  final String channelCid;
  final int unreadMessages;
  ReadEntity(
      {@required this.lastRead,
      @required this.userId,
      @required this.channelCid,
      this.unreadMessages});
  factory ReadEntity.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final stringType = db.typeSystem.forDartType<String>();
    final intType = db.typeSystem.forDartType<int>();
    return ReadEntity(
      lastRead: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_read']),
      userId:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      channelCid: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}channel_cid']),
      unreadMessages: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}unread_messages']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || lastRead != null) {
      map['last_read'] = Variable<DateTime>(lastRead);
    }
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    if (!nullToAbsent || channelCid != null) {
      map['channel_cid'] = Variable<String>(channelCid);
    }
    if (!nullToAbsent || unreadMessages != null) {
      map['unread_messages'] = Variable<int>(unreadMessages);
    }
    return map;
  }

  factory ReadEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ReadEntity(
      lastRead: serializer.fromJson<DateTime>(json['lastRead']),
      userId: serializer.fromJson<String>(json['userId']),
      channelCid: serializer.fromJson<String>(json['channelCid']),
      unreadMessages: serializer.fromJson<int>(json['unreadMessages']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'lastRead': serializer.toJson<DateTime>(lastRead),
      'userId': serializer.toJson<String>(userId),
      'channelCid': serializer.toJson<String>(channelCid),
      'unreadMessages': serializer.toJson<int>(unreadMessages),
    };
  }

  ReadEntity copyWith(
          {DateTime lastRead,
          String userId,
          String channelCid,
          Value<int> unreadMessages = const Value.absent()}) =>
      ReadEntity(
        lastRead: lastRead ?? this.lastRead,
        userId: userId ?? this.userId,
        channelCid: channelCid ?? this.channelCid,
        unreadMessages:
            unreadMessages.present ? unreadMessages.value : this.unreadMessages,
      );
  @override
  String toString() {
    return (StringBuffer('ReadEntity(')
          ..write('lastRead: $lastRead, ')
          ..write('userId: $userId, ')
          ..write('channelCid: $channelCid, ')
          ..write('unreadMessages: $unreadMessages')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      lastRead.hashCode,
      $mrjc(userId.hashCode,
          $mrjc(channelCid.hashCode, unreadMessages.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ReadEntity &&
          other.lastRead == this.lastRead &&
          other.userId == this.userId &&
          other.channelCid == this.channelCid &&
          other.unreadMessages == this.unreadMessages);
}

class ReadsCompanion extends UpdateCompanion<ReadEntity> {
  final Value<DateTime> lastRead;
  final Value<String> userId;
  final Value<String> channelCid;
  final Value<int> unreadMessages;
  const ReadsCompanion({
    this.lastRead = const Value.absent(),
    this.userId = const Value.absent(),
    this.channelCid = const Value.absent(),
    this.unreadMessages = const Value.absent(),
  });
  ReadsCompanion.insert({
    @required DateTime lastRead,
    @required String userId,
    @required String channelCid,
    this.unreadMessages = const Value.absent(),
  })  : lastRead = Value(lastRead),
        userId = Value(userId),
        channelCid = Value(channelCid);
  static Insertable<ReadEntity> custom({
    Expression<DateTime> lastRead,
    Expression<String> userId,
    Expression<String> channelCid,
    Expression<int> unreadMessages,
  }) {
    return RawValuesInsertable({
      if (lastRead != null) 'last_read': lastRead,
      if (userId != null) 'user_id': userId,
      if (channelCid != null) 'channel_cid': channelCid,
      if (unreadMessages != null) 'unread_messages': unreadMessages,
    });
  }

  ReadsCompanion copyWith(
      {Value<DateTime> lastRead,
      Value<String> userId,
      Value<String> channelCid,
      Value<int> unreadMessages}) {
    return ReadsCompanion(
      lastRead: lastRead ?? this.lastRead,
      userId: userId ?? this.userId,
      channelCid: channelCid ?? this.channelCid,
      unreadMessages: unreadMessages ?? this.unreadMessages,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (lastRead.present) {
      map['last_read'] = Variable<DateTime>(lastRead.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (channelCid.present) {
      map['channel_cid'] = Variable<String>(channelCid.value);
    }
    if (unreadMessages.present) {
      map['unread_messages'] = Variable<int>(unreadMessages.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReadsCompanion(')
          ..write('lastRead: $lastRead, ')
          ..write('userId: $userId, ')
          ..write('channelCid: $channelCid, ')
          ..write('unreadMessages: $unreadMessages')
          ..write(')'))
        .toString();
  }
}

class $ReadsTable extends Reads with TableInfo<$ReadsTable, ReadEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $ReadsTable(this._db, [this._alias]);
  final VerificationMeta _lastReadMeta = const VerificationMeta('lastRead');
  GeneratedDateTimeColumn _lastRead;
  @override
  GeneratedDateTimeColumn get lastRead => _lastRead ??= _constructLastRead();
  GeneratedDateTimeColumn _constructLastRead() {
    return GeneratedDateTimeColumn(
      'last_read',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedTextColumn _userId;
  @override
  GeneratedTextColumn get userId => _userId ??= _constructUserId();
  GeneratedTextColumn _constructUserId() {
    return GeneratedTextColumn(
      'user_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _channelCidMeta = const VerificationMeta('channelCid');
  GeneratedTextColumn _channelCid;
  @override
  GeneratedTextColumn get channelCid => _channelCid ??= _constructChannelCid();
  GeneratedTextColumn _constructChannelCid() {
    return GeneratedTextColumn('channel_cid', $tableName, false,
        $customConstraints: 'REFERENCES channels(cid) ON DELETE CASCADE');
  }

  final VerificationMeta _unreadMessagesMeta =
      const VerificationMeta('unreadMessages');
  GeneratedIntColumn _unreadMessages;
  @override
  GeneratedIntColumn get unreadMessages =>
      _unreadMessages ??= _constructUnreadMessages();
  GeneratedIntColumn _constructUnreadMessages() {
    return GeneratedIntColumn(
      'unread_messages',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [lastRead, userId, channelCid, unreadMessages];
  @override
  $ReadsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'reads';
  @override
  final String actualTableName = 'reads';
  @override
  VerificationContext validateIntegrity(Insertable<ReadEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('last_read')) {
      context.handle(_lastReadMeta,
          lastRead.isAcceptableOrUnknown(data['last_read'], _lastReadMeta));
    } else if (isInserting) {
      context.missing(_lastReadMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id'], _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('channel_cid')) {
      context.handle(
          _channelCidMeta,
          channelCid.isAcceptableOrUnknown(
              data['channel_cid'], _channelCidMeta));
    } else if (isInserting) {
      context.missing(_channelCidMeta);
    }
    if (data.containsKey('unread_messages')) {
      context.handle(
          _unreadMessagesMeta,
          unreadMessages.isAcceptableOrUnknown(
              data['unread_messages'], _unreadMessagesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId, channelCid};
  @override
  ReadEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ReadEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ReadsTable createAlias(String alias) {
    return $ReadsTable(_db, alias);
  }
}

class ChannelQueryEntity extends DataClass
    implements Insertable<ChannelQueryEntity> {
  final String queryHash;
  final String channelCid;
  ChannelQueryEntity({@required this.queryHash, @required this.channelCid});
  factory ChannelQueryEntity.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return ChannelQueryEntity(
      queryHash: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}query_hash']),
      channelCid: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}channel_cid']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || queryHash != null) {
      map['query_hash'] = Variable<String>(queryHash);
    }
    if (!nullToAbsent || channelCid != null) {
      map['channel_cid'] = Variable<String>(channelCid);
    }
    return map;
  }

  factory ChannelQueryEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ChannelQueryEntity(
      queryHash: serializer.fromJson<String>(json['queryHash']),
      channelCid: serializer.fromJson<String>(json['channelCid']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'queryHash': serializer.toJson<String>(queryHash),
      'channelCid': serializer.toJson<String>(channelCid),
    };
  }

  ChannelQueryEntity copyWith({String queryHash, String channelCid}) =>
      ChannelQueryEntity(
        queryHash: queryHash ?? this.queryHash,
        channelCid: channelCid ?? this.channelCid,
      );
  @override
  String toString() {
    return (StringBuffer('ChannelQueryEntity(')
          ..write('queryHash: $queryHash, ')
          ..write('channelCid: $channelCid')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(queryHash.hashCode, channelCid.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ChannelQueryEntity &&
          other.queryHash == this.queryHash &&
          other.channelCid == this.channelCid);
}

class ChannelQueriesCompanion extends UpdateCompanion<ChannelQueryEntity> {
  final Value<String> queryHash;
  final Value<String> channelCid;
  const ChannelQueriesCompanion({
    this.queryHash = const Value.absent(),
    this.channelCid = const Value.absent(),
  });
  ChannelQueriesCompanion.insert({
    @required String queryHash,
    @required String channelCid,
  })  : queryHash = Value(queryHash),
        channelCid = Value(channelCid);
  static Insertable<ChannelQueryEntity> custom({
    Expression<String> queryHash,
    Expression<String> channelCid,
  }) {
    return RawValuesInsertable({
      if (queryHash != null) 'query_hash': queryHash,
      if (channelCid != null) 'channel_cid': channelCid,
    });
  }

  ChannelQueriesCompanion copyWith(
      {Value<String> queryHash, Value<String> channelCid}) {
    return ChannelQueriesCompanion(
      queryHash: queryHash ?? this.queryHash,
      channelCid: channelCid ?? this.channelCid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (queryHash.present) {
      map['query_hash'] = Variable<String>(queryHash.value);
    }
    if (channelCid.present) {
      map['channel_cid'] = Variable<String>(channelCid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChannelQueriesCompanion(')
          ..write('queryHash: $queryHash, ')
          ..write('channelCid: $channelCid')
          ..write(')'))
        .toString();
  }
}

class $ChannelQueriesTable extends ChannelQueries
    with TableInfo<$ChannelQueriesTable, ChannelQueryEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $ChannelQueriesTable(this._db, [this._alias]);
  final VerificationMeta _queryHashMeta = const VerificationMeta('queryHash');
  GeneratedTextColumn _queryHash;
  @override
  GeneratedTextColumn get queryHash => _queryHash ??= _constructQueryHash();
  GeneratedTextColumn _constructQueryHash() {
    return GeneratedTextColumn(
      'query_hash',
      $tableName,
      false,
    );
  }

  final VerificationMeta _channelCidMeta = const VerificationMeta('channelCid');
  GeneratedTextColumn _channelCid;
  @override
  GeneratedTextColumn get channelCid => _channelCid ??= _constructChannelCid();
  GeneratedTextColumn _constructChannelCid() {
    return GeneratedTextColumn(
      'channel_cid',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [queryHash, channelCid];
  @override
  $ChannelQueriesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'channel_queries';
  @override
  final String actualTableName = 'channel_queries';
  @override
  VerificationContext validateIntegrity(Insertable<ChannelQueryEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('query_hash')) {
      context.handle(_queryHashMeta,
          queryHash.isAcceptableOrUnknown(data['query_hash'], _queryHashMeta));
    } else if (isInserting) {
      context.missing(_queryHashMeta);
    }
    if (data.containsKey('channel_cid')) {
      context.handle(
          _channelCidMeta,
          channelCid.isAcceptableOrUnknown(
              data['channel_cid'], _channelCidMeta));
    } else if (isInserting) {
      context.missing(_channelCidMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {queryHash, channelCid};
  @override
  ChannelQueryEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ChannelQueryEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ChannelQueriesTable createAlias(String alias) {
    return $ChannelQueriesTable(_db, alias);
  }
}

class ConnectionEventEntity extends DataClass
    implements Insertable<ConnectionEventEntity> {
  final int id;
  final Map<String, Object> ownUser;
  final int totalUnreadCount;
  final int unreadChannels;
  final DateTime lastEventAt;
  final DateTime lastSyncAt;
  ConnectionEventEntity(
      {@required this.id,
      this.ownUser,
      this.totalUnreadCount,
      this.unreadChannels,
      this.lastEventAt,
      this.lastSyncAt});
  factory ConnectionEventEntity.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return ConnectionEventEntity(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      ownUser: $ConnectionEventsTable.$converter0.mapToDart(stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}own_user'])),
      totalUnreadCount: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}total_unread_count']),
      unreadChannels: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}unread_channels']),
      lastEventAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_event_at']),
      lastSyncAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_sync_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || ownUser != null) {
      final converter = $ConnectionEventsTable.$converter0;
      map['own_user'] = Variable<String>(converter.mapToSql(ownUser));
    }
    if (!nullToAbsent || totalUnreadCount != null) {
      map['total_unread_count'] = Variable<int>(totalUnreadCount);
    }
    if (!nullToAbsent || unreadChannels != null) {
      map['unread_channels'] = Variable<int>(unreadChannels);
    }
    if (!nullToAbsent || lastEventAt != null) {
      map['last_event_at'] = Variable<DateTime>(lastEventAt);
    }
    if (!nullToAbsent || lastSyncAt != null) {
      map['last_sync_at'] = Variable<DateTime>(lastSyncAt);
    }
    return map;
  }

  factory ConnectionEventEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ConnectionEventEntity(
      id: serializer.fromJson<int>(json['id']),
      ownUser: serializer.fromJson<Map<String, Object>>(json['ownUser']),
      totalUnreadCount: serializer.fromJson<int>(json['totalUnreadCount']),
      unreadChannels: serializer.fromJson<int>(json['unreadChannels']),
      lastEventAt: serializer.fromJson<DateTime>(json['lastEventAt']),
      lastSyncAt: serializer.fromJson<DateTime>(json['lastSyncAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'ownUser': serializer.toJson<Map<String, Object>>(ownUser),
      'totalUnreadCount': serializer.toJson<int>(totalUnreadCount),
      'unreadChannels': serializer.toJson<int>(unreadChannels),
      'lastEventAt': serializer.toJson<DateTime>(lastEventAt),
      'lastSyncAt': serializer.toJson<DateTime>(lastSyncAt),
    };
  }

  ConnectionEventEntity copyWith(
          {int id,
          Value<Map<String, Object>> ownUser = const Value.absent(),
          Value<int> totalUnreadCount = const Value.absent(),
          Value<int> unreadChannels = const Value.absent(),
          Value<DateTime> lastEventAt = const Value.absent(),
          Value<DateTime> lastSyncAt = const Value.absent()}) =>
      ConnectionEventEntity(
        id: id ?? this.id,
        ownUser: ownUser.present ? ownUser.value : this.ownUser,
        totalUnreadCount: totalUnreadCount.present
            ? totalUnreadCount.value
            : this.totalUnreadCount,
        unreadChannels:
            unreadChannels.present ? unreadChannels.value : this.unreadChannels,
        lastEventAt: lastEventAt.present ? lastEventAt.value : this.lastEventAt,
        lastSyncAt: lastSyncAt.present ? lastSyncAt.value : this.lastSyncAt,
      );
  @override
  String toString() {
    return (StringBuffer('ConnectionEventEntity(')
          ..write('id: $id, ')
          ..write('ownUser: $ownUser, ')
          ..write('totalUnreadCount: $totalUnreadCount, ')
          ..write('unreadChannels: $unreadChannels, ')
          ..write('lastEventAt: $lastEventAt, ')
          ..write('lastSyncAt: $lastSyncAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          ownUser.hashCode,
          $mrjc(
              totalUnreadCount.hashCode,
              $mrjc(unreadChannels.hashCode,
                  $mrjc(lastEventAt.hashCode, lastSyncAt.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ConnectionEventEntity &&
          other.id == this.id &&
          other.ownUser == this.ownUser &&
          other.totalUnreadCount == this.totalUnreadCount &&
          other.unreadChannels == this.unreadChannels &&
          other.lastEventAt == this.lastEventAt &&
          other.lastSyncAt == this.lastSyncAt);
}

class ConnectionEventsCompanion extends UpdateCompanion<ConnectionEventEntity> {
  final Value<int> id;
  final Value<Map<String, Object>> ownUser;
  final Value<int> totalUnreadCount;
  final Value<int> unreadChannels;
  final Value<DateTime> lastEventAt;
  final Value<DateTime> lastSyncAt;
  const ConnectionEventsCompanion({
    this.id = const Value.absent(),
    this.ownUser = const Value.absent(),
    this.totalUnreadCount = const Value.absent(),
    this.unreadChannels = const Value.absent(),
    this.lastEventAt = const Value.absent(),
    this.lastSyncAt = const Value.absent(),
  });
  ConnectionEventsCompanion.insert({
    this.id = const Value.absent(),
    this.ownUser = const Value.absent(),
    this.totalUnreadCount = const Value.absent(),
    this.unreadChannels = const Value.absent(),
    this.lastEventAt = const Value.absent(),
    this.lastSyncAt = const Value.absent(),
  });
  static Insertable<ConnectionEventEntity> custom({
    Expression<int> id,
    Expression<String> ownUser,
    Expression<int> totalUnreadCount,
    Expression<int> unreadChannels,
    Expression<DateTime> lastEventAt,
    Expression<DateTime> lastSyncAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ownUser != null) 'own_user': ownUser,
      if (totalUnreadCount != null) 'total_unread_count': totalUnreadCount,
      if (unreadChannels != null) 'unread_channels': unreadChannels,
      if (lastEventAt != null) 'last_event_at': lastEventAt,
      if (lastSyncAt != null) 'last_sync_at': lastSyncAt,
    });
  }

  ConnectionEventsCompanion copyWith(
      {Value<int> id,
      Value<Map<String, Object>> ownUser,
      Value<int> totalUnreadCount,
      Value<int> unreadChannels,
      Value<DateTime> lastEventAt,
      Value<DateTime> lastSyncAt}) {
    return ConnectionEventsCompanion(
      id: id ?? this.id,
      ownUser: ownUser ?? this.ownUser,
      totalUnreadCount: totalUnreadCount ?? this.totalUnreadCount,
      unreadChannels: unreadChannels ?? this.unreadChannels,
      lastEventAt: lastEventAt ?? this.lastEventAt,
      lastSyncAt: lastSyncAt ?? this.lastSyncAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (ownUser.present) {
      final converter = $ConnectionEventsTable.$converter0;
      map['own_user'] = Variable<String>(converter.mapToSql(ownUser.value));
    }
    if (totalUnreadCount.present) {
      map['total_unread_count'] = Variable<int>(totalUnreadCount.value);
    }
    if (unreadChannels.present) {
      map['unread_channels'] = Variable<int>(unreadChannels.value);
    }
    if (lastEventAt.present) {
      map['last_event_at'] = Variable<DateTime>(lastEventAt.value);
    }
    if (lastSyncAt.present) {
      map['last_sync_at'] = Variable<DateTime>(lastSyncAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ConnectionEventsCompanion(')
          ..write('id: $id, ')
          ..write('ownUser: $ownUser, ')
          ..write('totalUnreadCount: $totalUnreadCount, ')
          ..write('unreadChannels: $unreadChannels, ')
          ..write('lastEventAt: $lastEventAt, ')
          ..write('lastSyncAt: $lastSyncAt')
          ..write(')'))
        .toString();
  }
}

class $ConnectionEventsTable extends ConnectionEvents
    with TableInfo<$ConnectionEventsTable, ConnectionEventEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $ConnectionEventsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _ownUserMeta = const VerificationMeta('ownUser');
  GeneratedTextColumn _ownUser;
  @override
  GeneratedTextColumn get ownUser => _ownUser ??= _constructOwnUser();
  GeneratedTextColumn _constructOwnUser() {
    return GeneratedTextColumn(
      'own_user',
      $tableName,
      true,
    );
  }

  final VerificationMeta _totalUnreadCountMeta =
      const VerificationMeta('totalUnreadCount');
  GeneratedIntColumn _totalUnreadCount;
  @override
  GeneratedIntColumn get totalUnreadCount =>
      _totalUnreadCount ??= _constructTotalUnreadCount();
  GeneratedIntColumn _constructTotalUnreadCount() {
    return GeneratedIntColumn(
      'total_unread_count',
      $tableName,
      true,
    );
  }

  final VerificationMeta _unreadChannelsMeta =
      const VerificationMeta('unreadChannels');
  GeneratedIntColumn _unreadChannels;
  @override
  GeneratedIntColumn get unreadChannels =>
      _unreadChannels ??= _constructUnreadChannels();
  GeneratedIntColumn _constructUnreadChannels() {
    return GeneratedIntColumn(
      'unread_channels',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastEventAtMeta =
      const VerificationMeta('lastEventAt');
  GeneratedDateTimeColumn _lastEventAt;
  @override
  GeneratedDateTimeColumn get lastEventAt =>
      _lastEventAt ??= _constructLastEventAt();
  GeneratedDateTimeColumn _constructLastEventAt() {
    return GeneratedDateTimeColumn(
      'last_event_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastSyncAtMeta = const VerificationMeta('lastSyncAt');
  GeneratedDateTimeColumn _lastSyncAt;
  @override
  GeneratedDateTimeColumn get lastSyncAt =>
      _lastSyncAt ??= _constructLastSyncAt();
  GeneratedDateTimeColumn _constructLastSyncAt() {
    return GeneratedDateTimeColumn(
      'last_sync_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, ownUser, totalUnreadCount, unreadChannels, lastEventAt, lastSyncAt];
  @override
  $ConnectionEventsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'connection_events';
  @override
  final String actualTableName = 'connection_events';
  @override
  VerificationContext validateIntegrity(
      Insertable<ConnectionEventEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    context.handle(_ownUserMeta, const VerificationResult.success());
    if (data.containsKey('total_unread_count')) {
      context.handle(
          _totalUnreadCountMeta,
          totalUnreadCount.isAcceptableOrUnknown(
              data['total_unread_count'], _totalUnreadCountMeta));
    }
    if (data.containsKey('unread_channels')) {
      context.handle(
          _unreadChannelsMeta,
          unreadChannels.isAcceptableOrUnknown(
              data['unread_channels'], _unreadChannelsMeta));
    }
    if (data.containsKey('last_event_at')) {
      context.handle(
          _lastEventAtMeta,
          lastEventAt.isAcceptableOrUnknown(
              data['last_event_at'], _lastEventAtMeta));
    }
    if (data.containsKey('last_sync_at')) {
      context.handle(
          _lastSyncAtMeta,
          lastSyncAt.isAcceptableOrUnknown(
              data['last_sync_at'], _lastSyncAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ConnectionEventEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ConnectionEventEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ConnectionEventsTable createAlias(String alias) {
    return $ConnectionEventsTable(_db, alias);
  }

  static TypeConverter<Map<String, Object>, String> $converter0 =
      MapConverter<Object>();
}

abstract class _$MoorChatDatabase extends GeneratedDatabase {
  _$MoorChatDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  _$MoorChatDatabase.connect(DatabaseConnection c) : super.connect(c);
  $ChannelsTable _channels;
  $ChannelsTable get channels => _channels ??= $ChannelsTable(this);
  $MessagesTable _messages;
  $MessagesTable get messages => _messages ??= $MessagesTable(this);
  $ReactionsTable _reactions;
  $ReactionsTable get reactions => _reactions ??= $ReactionsTable(this);
  $UsersTable _users;
  $UsersTable get users => _users ??= $UsersTable(this);
  $MembersTable _members;
  $MembersTable get members => _members ??= $MembersTable(this);
  $ReadsTable _reads;
  $ReadsTable get reads => _reads ??= $ReadsTable(this);
  $ChannelQueriesTable _channelQueries;
  $ChannelQueriesTable get channelQueries =>
      _channelQueries ??= $ChannelQueriesTable(this);
  $ConnectionEventsTable _connectionEvents;
  $ConnectionEventsTable get connectionEvents =>
      _connectionEvents ??= $ConnectionEventsTable(this);
  UserDao _userDao;
  UserDao get userDao => _userDao ??= UserDao(this as MoorChatDatabase);
  ChannelDao _channelDao;
  ChannelDao get channelDao =>
      _channelDao ??= ChannelDao(this as MoorChatDatabase);
  MessageDao _messageDao;
  MessageDao get messageDao =>
      _messageDao ??= MessageDao(this as MoorChatDatabase);
  MemberDao _memberDao;
  MemberDao get memberDao => _memberDao ??= MemberDao(this as MoorChatDatabase);
  ReactionDao _reactionDao;
  ReactionDao get reactionDao =>
      _reactionDao ??= ReactionDao(this as MoorChatDatabase);
  ReadDao _readDao;
  ReadDao get readDao => _readDao ??= ReadDao(this as MoorChatDatabase);
  ChannelQueryDao _channelQueryDao;
  ChannelQueryDao get channelQueryDao =>
      _channelQueryDao ??= ChannelQueryDao(this as MoorChatDatabase);
  ConnectionEventDao _connectionEventDao;
  ConnectionEventDao get connectionEventDao =>
      _connectionEventDao ??= ConnectionEventDao(this as MoorChatDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        channels,
        messages,
        reactions,
        users,
        members,
        reads,
        channelQueries,
        connectionEvents
      ];
}
