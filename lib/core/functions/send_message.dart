import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';

Future<void> sendAndReceiveMessage(String text, String sender) async {
  final timestamp = Timestamp.now();

  await FirebaseFirestore.instance.collection('messages').add({
    'text': text,
    'sender': sender,
    'timestamp': timestamp,
  });

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
