import 'package:flutter/material.dart';
import 'package:purnota_apk/widgets/home/menu_bar.dart';
import 'package:purnota_apk/widgets/home/post_bar.dart';
import 'package:purnota_apk/widgets/home/post_page.dart';
import 'package:purnota_apk/widgets/home/story_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          top: 18,
        ),
        child: ListView(
          children: [
            PostBar(),
            Divider(
              thickness: 1,
              color: Colors.black12,
            ),
            MenuBar(),
            Divider(
              thickness: 1,
              color: Colors.black12,
            ),
            StoryBar(),
            Divider(
              thickness: 1,
              color: Colors.black12,
            ),
            PostPage(),
          ],
        ));
  }
}
