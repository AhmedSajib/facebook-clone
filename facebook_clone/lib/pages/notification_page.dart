import 'package:flutter/material.dart';
import 'package:purnota_apk/model/notification_model.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Notification",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Container(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.message),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    color: Colors.green,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[300]),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.settings),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    color: Colors.grey,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[300]),
                )
              ],
            )
          ],
        ),
      ),
      const Divider(
        thickness: 1,
        color: Colors.black38,
      ),
      Expanded(
          child: ListView.builder(
              itemCount: notificationData.length,
              itemBuilder: (context, i) => Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blueGrey,
                          backgroundImage:
                              AssetImage(notificationData[i].avatar),
                        ),
                        title: Row(
                          children: [
                            Text(notificationData[i].name,
                                style: const TextStyle(fontSize: 20)),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(notificationData[i].description)
                          ],
                        ),
                        subtitle: Text(notificationData[i].time),
                        trailing: IconButton(
                          iconSize: 20,
                          color: Colors.green,
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert_outlined),
                        ),
                        onTap: () {
                          // Navigator.push(contaxt,
                          // MaterialPageRoute(builder:(context)=>UserProfile()))
                        },
                      )
                    ],
                  )))
    ]);
  }
}
