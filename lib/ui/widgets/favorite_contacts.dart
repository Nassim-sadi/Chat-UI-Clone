import 'package:flutter/material.dart';
import 'package:messenger_clone/data/models/message_model.dart';
import 'package:messenger_clone/ui/screens/chatscreen.dart';

class favoriteContacts extends StatelessWidget {
  const favoriteContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Favorite Contacts',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blueGrey, letterSpacing: 1.0),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.blueGrey,
                  )),
            ],
          ),
        ),
        Container(
          height: 120,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: favorites.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatScreen(user: favorites[index])));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage(
                          favorites[index].imageUrl,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        favorites[index].name,
                        style: const TextStyle(fontWeight: FontWeight.w600, color: Colors.blueGrey),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
