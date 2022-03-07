import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Video',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: Tooltip(
                  message: 'Play Video Automatically',
                  child: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      }),
                ),
              )
            ],
          ),
        ),
        const Divider(
          thickness: 0.9,
          color: Colors.black26,
        ),
        Row(
          children: [
            IconButton(
                iconSize: 60,
                onPressed: () {},
                icon: const CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('images/user/u1.jpg'))),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Sunchez',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '   Follow',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Wrap(spacing: 10, children: const [
                    Text(
                      'Just Now',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Icon(
                      Icons.public,
                      size: 20,
                    ),
                  ])
                ],
              ),
            ),
            IconButton(
                iconSize: 30,
                onPressed: () {},
                icon: const Icon(Icons.more_horiz_outlined))
          ],
        ),
        const Divider(
          thickness: 1,
          color: Colors.black26,
        ),
      ],
    );
  }
}
