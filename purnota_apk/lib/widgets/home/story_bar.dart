import 'package:flutter/material.dart';
import 'package:purnota_apk/model/story_model.dart';

class StoryBar extends StatelessWidget {
  const StoryBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10,
          children: [
            Container(
              height: 255,
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 150,
                          margin: const EdgeInsets.only(bottom: 30),
                          child: const ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image(
                              image: AssetImage("images/story/s1.jfif"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Add to Story',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ))
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    left: 40,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_circle_rounded),
                      iconSize: 45,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            // for loop will be here
            for (var i = 0; i < storyData.length; i++) ...[
              Container(
                height: 255,
                width: 150,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    GestureDetector(
                      onTap: storyData[i].onTap,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage(storyData[i].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 10,
                      child: Text(
                        storyData[i].userName,
                        style:
                            const TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
