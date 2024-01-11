import 'package:flutter/material.dart';
import "package:provider/provider.dart";
import "package:yes_no_app/presentation/providers/chat_provider.dart";
import 'package:yes_no_app/presentation/widgets/chat/my_message.bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_messages_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/shared/message_field_box.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(9.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            ),
          ),
        ),
        title: const Text("Mi, Amor"),
        // centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  // const _ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messagesList.length,
                // itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  final message = chatProvider.messagesList[index];
                  return (message.fromWho == FromWho.hers)
                      ? HerMessageBubble(
                          message: message,
                        )
                      : MyMessageBubble(
                          message: message,
                        );
                }),
          ),
          // const Text("mundo")
          MessageFieldBox(onValue: chatProvider.sendMessage),
        ],
      ),
    ));
  }
}
