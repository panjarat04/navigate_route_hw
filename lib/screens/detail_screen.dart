import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:navigate_route_hw/provider/counter_provider.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = '/detail';
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final message = context.watch<CounterProvider>().message;

    final textStyle = Theme.of(context).textTheme.titleLarge;

    return Scaffold(
      appBar: AppBar(title: const Text('Detail Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message.isEmpty ? '' : message,
              style: textStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(textStyle: textStyle),
              onPressed: () {
                context.read<CounterProvider>().setMessage(
                  'this is data from detail page',
                );
                Navigator.pop(context);
              },
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
