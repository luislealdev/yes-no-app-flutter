import 'package:flutter/material.dart';
import 'package:yes_no_app_flutter/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app_flutter/presentation/widgets/chat/other_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Olivia Rodrigo'),
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://indiehoy.com/wp-content/uploads/2021/06/olivia-rodrigo.jpg")),
        ),
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(children: [
        Expanded(child: ListView.builder(itemBuilder: (context, index) {
          return (index % 2 == 0) ? OtherMessageBubble() : MyMessageBubble();
        })),
        const Text('World')
      ]),
    ));
  }
}
