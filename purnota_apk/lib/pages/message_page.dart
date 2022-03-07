import 'package:flutter/material.dart';
import 'package:purnota_apk/model/message_model.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Message",
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
              itemCount: messageData.length,
              itemBuilder: (context, i) => Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blueGrey,
                          backgroundImage: AssetImage(messageData[i].avatar),
                        ),
                        title: Text(messageData[i].name,
                            style: const TextStyle(fontSize: 20)),
                        subtitle: Text(messageData[i].time),
                        trailing: IconButton(
                          iconSize: 20,
                          color: Colors.green,
                          onPressed: () {},
                          icon: messageData[i].status,
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
