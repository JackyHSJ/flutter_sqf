import 'package:zyg_sqflite_plugin/src/model/sqflite_base_model.dart';
import 'package:zyg_sqflite_plugin/src/model/sqflite_column_model.dart';

class ChatCallModel implements SQFLiteBaseTable {
  final int? callID;
  final int? callerID;
  final int? receiverID;
  final int? groupID;
  final String? startTime;
  final String? endTime;
  final int? isGroupCall;

  ChatCallModel({
    this.callID,
    this.callerID,
    this.receiverID,
    this.groupID,
    this.startTime,
    this.endTime,
    this.isGroupCall
  });

  @override
  String get tableName => 'ChatCallModel';

  @override
  List<SQFLiteColumnModel> get columns => [
    SQFLiteColumnModel(name: 'callID', type: int, isPrimaryKey: true),
    SQFLiteColumnModel(name: 'callerID', type: int, foreignKey: 'ChatUserModel(userID)'),
    SQFLiteColumnModel(name: 'receiverID', type: int, foreignKey: 'ChatUserModel(userID)'),
    SQFLiteColumnModel(name: 'groupID', type: int, foreignKey: 'ChatUserModel(groupID)'),
    SQFLiteColumnModel(name: 'startTime', type: String),
    SQFLiteColumnModel(name: 'endTime', type: String),
    SQFLiteColumnModel(name: 'isGroupCall', type: int),
  ];

  @override
  Map<String, dynamic> toMap() {
    throw UnimplementedError();
  }
}
