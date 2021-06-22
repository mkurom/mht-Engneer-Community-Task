import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:task1/state/second_page_notifier.dart';

class SecondNotifierPage extends StatelessWidget {
  const SecondNotifierPage({
    Key? key,
    required this.count,
  }) : super(key: key);

  final int count;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SecondPageNotifier>(
      create: (_) => SecondPageNotifier(),
      child: Consumer<SecondPageNotifier>(
        builder: (_, notifier, __) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('second Page'),
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.of(context).pop(notifier.counter),
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${(count + notifier.counter).toString()}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                notifier.incrementCounter();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }
}
