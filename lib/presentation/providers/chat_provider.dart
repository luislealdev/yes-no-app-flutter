import 'package:flutter/widgets.dart';
import 'package:yes_no_app_flutter/domain/entities/Message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: 'Hola princesa!', fromWho: FromWho.mine),
    Message(text: 'Ya acabaste tu nuevo album?', fromWho: FromWho.mine),
  ];

  Future<void> sendMessage(String text) async {
    //TODO: IMPLEMENT METHOD
    final newMessage = Message(text:text, fromWho: FromWho.mine);
    messages.add(newMessage);

  notifyListeners();
  }
}
