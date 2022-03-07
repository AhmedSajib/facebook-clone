import 'package:flutter/material.dart';

class PostBar extends StatelessWidget {
  const PostBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
            iconSize: 80,
            onPressed: () {},
            icon: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      image: AssetImage("images/user/u1.jpg"),
                      fit: BoxFit.cover)),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: TextButton(
            onPressed: () => {},
            child: Text(
              "'What's your mind ? ",
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey.shade600,
              ),
            ),
          ),
        ),
        Container(
          height: 60,
          child: const VerticalDivider(
            color: Colors.black26,
          ),
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.photo_album_outlined),
            ),
            const Text('Photo')
          ],
        )
      ],
    );
  }
}
