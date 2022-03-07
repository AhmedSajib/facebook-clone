import 'package:flutter/material.dart';
import 'package:purnota_apk/model/post_model.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        for (var i = 0; i < postData.length; i++) ...[
          Row(
            children: [
              IconButton(
                  iconSize: 60,
                  onPressed: () {},
                  icon: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(postData[i].avatarImage))),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      postData[i].name,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Wrap(spacing: 10, children: [
                      Text(
                        postData[i].time,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const Icon(Icons.public),
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
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    postData[i].postTitle,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                Image(
                  image: AssetImage(postData[i].postImage),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.thumb_up_alt_outlined),
                  ),
                  const Text(
                    '15',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.message_outlined),
                  ),
                  const Text(
                    '12',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.share_outlined),
                  ),
                  const Text(
                    '8',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              )
            ],
          ),
        ]
      ],
    ));
  }
}
