
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zyg_sqflite_plugin_example/model/chat_block_model.dart';
import 'package:zyg_sqflite_plugin_example/model/chat_message_model.dart';
import 'package:zyg_sqflite_plugin_example/model/chat_user_model.dart';

final chatBlockModelProvider = Provider<ChatBlockModel>((ref){
  return ChatBlockModel(ref: ref);
});

final chatUserModelProvider = Provider<ChatUserModel>((ref){
  return ChatUserModel(ref: ref);
});

final chatMessageModelProvider = Provider<ChatMessageModel>((ref){
  return ChatMessageModel(ref: ref);
});