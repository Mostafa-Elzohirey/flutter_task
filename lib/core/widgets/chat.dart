import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_task/core/constants/colors.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('messages')
          .orderBy('timestamp', descending: false)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        final messages = snapshot.data?.docs ?? [];

        return ListView.builder(
          // reverse: true,
          itemCount: messages.length,
          itemBuilder: (context, index) {
            final doc = messages[index];
            final text = doc['text'] ?? '';
            final sender = doc['sender'] ?? '';
            final timestamp = doc['timestamp'] as Timestamp?;
            String time = '';

            if (timestamp != null) {
              final dateTime = timestamp.toDate();
              time = TimeOfDay.fromDateTime(dateTime).format(context);
            }
            return Container(
              margin: EdgeInsets.only(
                top: 5,
                bottom: 5,
                left: 10,
                right: MediaQuery.of(context).size.width / 2,
              ),
              width: 50,
              decoration: BoxDecoration(
                color: sender == 'user' ? beige : Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: sender == 'user' ? salmon : beige,
                    child: Text(sender[0].toUpperCase()),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text(text),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(time, textAlign: TextAlign.end),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class Chat2 extends StatefulWidget {
  const Chat2({super.key});

  @override
  State<Chat2> createState() => _Chat2State();
}

class _Chat2State extends State<Chat2> {
  final ScrollController _scrollController = ScrollController();

  void scrollToBottom() {
    Future.delayed(Duration(milliseconds: 100), () {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('messages')
          .orderBy('timestamp', descending: false)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        final messages = snapshot.data?.docs ?? [];

        // Scroll to bottom when messages change
        WidgetsBinding.instance.addPostFrameCallback((_) => scrollToBottom());

        return ListView.builder(
          controller: _scrollController,
          itemCount: messages.length,
          padding: const EdgeInsets.symmetric(vertical: 10),
          itemBuilder: (context, index) {
            final doc = messages[index];
            final text = doc['text'] ?? '';
            final sender = doc['sender'] ?? '';
            final timestamp = doc['timestamp'] as Timestamp?;
            String time = '';

            if (timestamp != null) {
              final dateTime = timestamp.toDate();
              time = TimeOfDay.fromDateTime(dateTime).format(context);
            }

            final isUser = sender == 'user';

            return Align(
              alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                padding: const EdgeInsets.all(12),
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.75,
                ),
                decoration: BoxDecoration(
                  color: isUser ? beige : salmon,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundColor: isUser ? salmon : beige,
                          child: Text(
                            sender[0].toUpperCase(),
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            text,
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        time,
                        style: TextStyle(
                          fontSize: 11,
                          color:isUser ? brownRosy:terracotta,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
