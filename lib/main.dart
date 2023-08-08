import 'package:flutter/material.dart';

import 'next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('タイトル'),
      ),
      body: Center(
        child: Column(
          children: [
            const Icon(
              Icons.print,
              size: 100,
            ),
            SizedBox(
              width: 100,
              child: Image.asset('images/owl-2.jpg', fit: BoxFit.contain),
            ),
            SizedBox(
              width: 100,
              child: Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
            ElevatedButton(
              child: const Text('次へ'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NextPage('Test Prop')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
