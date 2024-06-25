import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zyg_sqflite_plugin/src/model/sqflite_base_model.dart';
import 'package:zyg_sqflite_plugin/src/model/sqflite_column_model.dart';
import 'package:zyg_sqflite_plugin/src/util/ddl_util.dart';
import 'package:zyg_sqflite_plugin/src/handler.dart';

class ChatBlockModel extends SQFLiteHandler implements SQFLiteBaseTable {
  final ProviderRef? ref;
  final num? userID;
  final num? blockedUserID;

  ChatBlockModel({
    this.ref,
    this.userID,
    this.blockedUserID,
  });

  @override
  String get createTableSql => SQFLiteDDLUtil.create(model: ChatBlockModel(ref: ref));

  @override
  String get tableName => 'ChatBlockModel';

  @override
  List<SQFLiteColumnModel> get columns => [
    SQFLiteColumnModel(name: 'userID', type: num, isPrimaryKey: true, foreignKey: 'ChatUserModel(userID)'),
    SQFLiteColumnModel(name: 'blockedUserID', type: num,  isPrimaryKey: true, foreignKey: 'ChatUserModel(userID)'),
  ];

  @override
  Map<String, dynamic> toMap() {
    return {
      'userID': userID,
      'blockedUserID': blockedUserID,
    };
  }
}
