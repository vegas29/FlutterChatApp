import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi mor'),
        centerTitle: false,
        leading: const Padding(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://majomontemayor.com/wp-content/uploads/2019/08/Mandy2015.jpg'),
          ),
        ),
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
              return Text('Indice: $index');
            },)),
            Text('Hola')
          ],
        ),
      ),
    );
  }
}
