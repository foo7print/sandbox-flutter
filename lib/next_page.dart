import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage(this.name, {super.key});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('次の画面'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(name),
          Center(
            child: ElevatedButton(
              child: const Text('戻る'),
              onPressed: () {
                Navigator.pop(context, '戻りました');
              },
            ),
          ),
        ],
      ),
    );
  }
}