import 'user_model.dart';

class Message {
  final User sender;
  final String time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

// YOU - current user
final User currentUser = User(id: 0, name: 'Current User', imageUrl: 'assets/images/borhan.jpg');

// USERS
final User chahrazad = User(id: 1, name: 'Chahrazad', imageUrl: 'assets/images/chahrazad.jpg');
final User chaima = User(id: 2, name: 'Chaima', imageUrl: 'assets/images/chaima.jpg');
final User farah = User(id: 3, name: 'Farah', imageUrl: 'assets/images/farah.jpg');
final User kader = User(id: 4, name: 'Kader', imageUrl: 'assets/images/kader.jpg');
final User noureddin = User(id: 5, name: 'Noureddin', imageUrl: 'assets/images/noureddin.jpg');
final User saleh = User(id: 6, name: 'Saleh', imageUrl: 'assets/images/saleh.jpg');
final User samira = User(id: 7, name: 'Samira', imageUrl: 'assets/images/samira.jpg');

// FAVORITE CONTACTS
List<User> favorites = [saleh, samira, kader, farah, chahrazad];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: chaima,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: kader,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: farah,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: saleh,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: samira,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: noureddin,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: chahrazad,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: chaima,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: chaima,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: chaima,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: chaima,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];
