import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              const Icon(Icons.post_add_outlined),
              Text(
                'Text',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade600,
                ),
              )
            ],
          ),
        ),
        Container(
          height: 40,
          child: const VerticalDivider(
            color: Colors.black26,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              const Icon(
                Icons.video_call,
                color: Colors.red,
              ),
              Text(
                'Live Video',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade600,
                ),
              )
            ],
          ),
        ),
        Container(
          height: 40,
          child: const VerticalDivider(
            color: Colors.black26,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.redAccent,
              ),
              Text(
                'Location',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade600,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
