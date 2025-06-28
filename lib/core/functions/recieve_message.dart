import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> receiveMessage(String text, String sender) async {
  if (sender == 'user') {
    Future.delayed(const Duration(seconds: 2), () {
      FirebaseFirestore.instance.collection('messages').add({
        'text': 'Thanks for reaching out! How can I assist you?',
        'sender': 'bot',
        'timestamp': Timestamp.now(),
      });
    });
  }
}
