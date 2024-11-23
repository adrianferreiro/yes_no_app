import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_messagge_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://image.europafm.com/clipping/cmsimages02/2018/03/05/FCD2F9B8-0E29-4F3F-BA46-207EA73A4C7F/98.jpg?crop=640,360,x0,y0&width=1900&height=1069&optimize=low&format=webply',
            ),
          ),
        ),
        title: const Text('Mi amor'),
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
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const MyMessageBubble();
              },
            )),
            Text('Mundo')
          ],
        ),
      ),
    );
  }
}
