import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageModel {
  final String name;
  final String time;
  final String avatar;
  final Icon status;

  MessageModel({
    required this.name,
    required this.time,
    required this.avatar,
    required this.status,
  });

  static Icon statusOnline = const Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.green,
  );
  static Icon statusOffline = const Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.black38,
  );
}

List<MessageModel> messageData = [
  MessageModel(
    name: 'Alexa',
    time: '12:23',
    avatar: 'images/user/u1.jpg',
    status: MessageModel.statusOnline,
  ),
  MessageModel(
    name: 'Ronda',
    time: '10:23',
    avatar: 'images/user/u2.jpg',
    status: MessageModel.statusOnline,
  ),
  MessageModel(
    name: 'Hery',
    time: '09:23',
    avatar: 'images/user/u3.jpg',
    status: MessageModel.statusOffline,
  ),
  MessageModel(
    name: 'Peter',
    time: '12:23',
    avatar: 'images/user/u4.jpg',
    status: MessageModel.statusOnline,
  ),
  MessageModel(
    name: 'Moises',
    time: '12:00 pm',
    avatar: 'images/user/u6.jpg',
    status: MessageModel.statusOffline,
  ),
  MessageModel(
    name: 'Hendrix',
    time: '12:23',
    avatar: 'images/user/u7.jpg',
    status: MessageModel.statusOnline,
  ),
  MessageModel(
    name: 'Charloty',
    time: '12:23',
    avatar: 'images/user/u8.jpg',
    status: MessageModel.statusOnline,
  ),
  MessageModel(
    name: 'Blings',
    time: '12:23',
    avatar: 'images/user/u9.jpg',
    status: MessageModel.statusOnline,
  ),
  MessageModel(
    name: 'Feen Alean',
    time: '12:23',
    avatar: 'images/user/u1.jpg',
    status: MessageModel.statusOnline,
  ),
];
