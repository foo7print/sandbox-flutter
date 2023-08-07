import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('次の画面'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('戻る'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}