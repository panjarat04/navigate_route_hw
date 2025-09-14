import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:navigate_route_hw/screens/detail_screen.dart';
import 'package:navigate_route_hw/provider/counter_provider.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final message = context.watch<CounterProvider>().message;

    final textStyle = Theme.of(context).textTheme.titleLarge;

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message.isEmpty ? '' : message,
              style: textStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(textStyle: textStyle),
              onPressed: () async {
                context.read<CounterProvider>().setMessage(
                  'this is data from home page',
                );

                final result = await Navigator.pushNamed(
                  context,
                  DetailScreen.routeName,
                );

                if (result != null) {
                  context.read<CounterProvider>().setMessage(result.toString());
                }
              },
              child: const Text('Go to Detail Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
