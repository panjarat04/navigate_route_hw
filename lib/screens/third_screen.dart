import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  static const routeName = '/thirdscreen';
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(title: Text('Third Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${args['name']}'),
            Text("Detail: ${args['message']}"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Mane Detail returned');
              },
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
