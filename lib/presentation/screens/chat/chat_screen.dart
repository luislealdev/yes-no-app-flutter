import 'package:flutter/material.dart';
import 'package:yes_no_app_flutter/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app_flutter/presentation/widgets/chat/other_message_bubble.dart';
import 'package:yes_no_app_flutter/presentation/widgets/shared/message_field_box.dart';
import 'package:yes_no_app_flutter/domain/entities/Message.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app_flutter/presentation/providers/chat_provider.dart';

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
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(children: [
        Expanded(
            child: ListView.builder(
                controller: chatProvider.scrollController,
                itemCount: chatProvider.messages.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messages[index];
                  return (message.fromWho == FromWho.other)
                      ? OtherMessageBubble(text: message.text)
                      : MyMessageBubble(text: message.text);
                })),
        //TEXTBOX
        MessageFieldBox(onValue: chatProvider.sendMessage)
      ]),
    ));
  }
}
