import 'package:flutter/cupertino.dart';

class StoryModel {
  final VoidCallback onTap;
  final String image;
  final String userName;

  StoryModel({
    required this.onTap,
    required this.image,
    required this.userName,
  });
}

List<StoryModel> storyData = [
  StoryModel(
    userName: 'Alexa',
    onTap: () => print("Alexa Story clicked"),
    image: "images/story/s3.jpg",
  ),
  StoryModel(
    userName: 'Ronda',
    onTap: () => print("Alexa Story clicked"),
    image: "images/story/s5.jpg",
  ),
  StoryModel(
    userName: 'Sunches',
    onTap: () => print("Alexa Story clicked"),
    image: "images/story/s6.jpg",
  ),
  StoryModel(
    userName: 'Riyad',
    onTap: () => print("Alexa Story clicked"),
    image: "images/story/s7.jpg",
  ),
  StoryModel(
    userName: 'Saka',
    onTap: () => print("Alexa Story clicked"),
    image: "images/story/s8.jpg",
  ),
];
