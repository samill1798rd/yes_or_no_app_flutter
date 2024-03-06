import 'package:flutter/material.dart';

import '../../widgets/chat/her_message_bubble.dart';
import '../../widgets/chat/my_message_bubble.dart';
import '../../widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  final String url =
      'https://media.revistagq.com/photos/62c297f76479fa73c1ca2262/16:9/w_2240,c_limit/Captura%20de%20pantalla%202022-07-04%20a%20las%209.34.03.png';

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(url),
          ),
        ),
        title: const Text('Minions'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return (index % 2 == 0) 
                ? const HerMessageBubble() 
                : const MyMessageBubble();
            })),
            // Text('Hola'),
            //Caja de texto mensajes
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
