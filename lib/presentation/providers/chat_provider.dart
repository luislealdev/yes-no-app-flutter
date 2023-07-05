import 'package:flutter/widgets.dart';
import 'package:yes_no_app_flutter/domain/entities/Message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();

  List<Message> messages = [
    Message(text: 'Hola princesa!', fromWho: FromWho.mine),
    Message(text: 'Ya acabaste tu nuevo album?', fromWho: FromWho.mine),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.mine);
    messages.add(newMessage);

    notifyListeners();
    scrollToBottom();
  }

  Future<void> scrollToBottom() async {
    await Future.delayed(const Duration(microseconds: 100));

    scrollController.animateTo(scrollController.position.maxScrollExtent,
        duration: const Duration(microseconds: 300), curve: Curves.easeOut);
  }
}
