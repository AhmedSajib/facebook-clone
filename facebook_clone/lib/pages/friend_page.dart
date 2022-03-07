import 'package:flutter/material.dart';
import 'package:purnota_apk/model/friends_model.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Friends",
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
                      icon: const Icon(Icons.person),
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
                      icon: const Icon(Icons.people),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.redAccent,
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
                itemCount: friendsData.length,
                itemBuilder: (context, i) => Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            backgroundImage: AssetImage(friendsData[i].avatar),
                          ),
                          title: Text(friendsData[i].name,
                              style: const TextStyle(fontSize: 20)),
                          trailing: Wrap(
                            spacing: 12,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Text('Add Friend'),
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    primary: Colors.white,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 10,
                                    ),
                                    textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text('Remove'),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.grey[400],
                                  primary: Colors.black,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          onTap: () {
                            // Navigator.push(contaxt,
                            // MaterialPageRoute(builder:(context)=>UserProfile()))
                          },
                        )
                      ],
                    )))
      ],
    );
  }
}
