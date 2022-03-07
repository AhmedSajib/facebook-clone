import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostModel {
  final VoidCallback avatarOnPressed;
  final String avatarImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String postTitle;
  final String postImage;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  PostModel({
    required this.avatarOnPressed,
    required this.avatarImage,
    required this.name,
    required this.time,
    required this.moreOnPressed,
    required this.postTitle,
    required this.postImage,
    required this.likeOnPressed,
    required this.commentOnPressed,
    required this.shareOnPressed,
  });
}

List<PostModel> postData = [
  PostModel(
    avatarOnPressed: () {},
    avatarImage: "images/user/u1.jpg",
    name: "Riya Chowdhury",
    time: "20 min",
    moreOnPressed: () {},
    postTitle: "This is a Riya Chowdhury's Title",
    postImage: "images/post/p1.jpg",
    likeOnPressed: () {},
    commentOnPressed: () {},
    shareOnPressed: () {},
  ),
  PostModel(
    avatarOnPressed: () {},
    avatarImage: "images/user/u2.jpg",
    name: "Riya Chowdhury",
    time: "20 min",
    moreOnPressed: () {},
    postTitle: "This is a Riya Chowdhury's Title",
    postImage: "images/post/p2.jpg",
    likeOnPressed: () {},
    commentOnPressed: () {},
    shareOnPressed: () {},
  ),
  PostModel(
    avatarOnPressed: () {},
    avatarImage: "images/user/u3.jpg",
    name: "Riya Chowdhury",
    time: "20 min",
    moreOnPressed: () {},
    postTitle: "This is a Riya Chowdhury's Title",
    postImage: "images/post/p3.png",
    likeOnPressed: () {},
    commentOnPressed: () {},
    shareOnPressed: () {},
  ),
  PostModel(
    avatarOnPressed: () {},
    avatarImage: "images/user/u4.jpg",
    name: "Riya Chowdhury",
    time: "20 min",
    moreOnPressed: () {},
    postTitle: "This is a Riya Chowdhury's Title",
    postImage: "images/post/p4.jpg",
    likeOnPressed: () {},
    commentOnPressed: () {},
    shareOnPressed: () {},
  ),
  PostModel(
    avatarOnPressed: () {},
    avatarImage: "images/user/u5.jpg",
    name: "Riya Chowdhury",
    time: "20 min",
    moreOnPressed: () {},
    postTitle: "This is a Riya Chowdhury's Title",
    postImage: "images/post/p5.jpg",
    likeOnPressed: () {},
    commentOnPressed: () {},
    shareOnPressed: () {},
  ),
  PostModel(
    avatarOnPressed: () {},
    avatarImage: "images/user/u6.jpg",
    name: "Riya Chowdhury",
    time: "20 min",
    moreOnPressed: () {},
    postTitle: "This is a Riya Chowdhury's Title",
    postImage: "images/post/p6.jpg",
    likeOnPressed: () {},
    commentOnPressed: () {},
    shareOnPressed: () {},
  ),
  PostModel(
    avatarOnPressed: () {},
    avatarImage: "images/user/u7.jpg",
    name: "Riya Chowdhury",
    time: "20 min",
    moreOnPressed: () {},
    postTitle: "This is a Riya Chowdhury's Title",
    postImage: "images/post/p7.jpg",
    likeOnPressed: () {},
    commentOnPressed: () {},
    shareOnPressed: () {},
  ),
  PostModel(
    avatarOnPressed: () {},
    avatarImage: "images/user/u8.jpg",
    name: "Riya Chowdhury",
    time: "20 min",
    moreOnPressed: () {},
    postTitle: "This is a Riya Chowdhury's Title",
    postImage: "images/post/p8.jpg",
    likeOnPressed: () {},
    commentOnPressed: () {},
    shareOnPressed: () {},
  ),
  PostModel(
    avatarOnPressed: () {},
    avatarImage: "images/user/u9.jpg",
    name: "Riya Chowdhury",
    time: "20 min",
    moreOnPressed: () {},
    postTitle: "This is a Riya Chowdhury's Title",
    postImage: "images/post/p10.jpg",
    likeOnPressed: () {},
    commentOnPressed: () {},
    shareOnPressed: () {},
  ),
];
