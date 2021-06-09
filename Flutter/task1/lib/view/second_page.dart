import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:task1/state/second_page_notifier.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ページ遷移後のライフサイクル確認'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.red,
      ),
    );
  }
}

// ChangeNotifierを使用したライフサイクル確認
class SecondNotifierPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SecondPageNotifier>(
      create: (_) => SecondPageNotifier(),
      child: Consumer<SecondPageNotifier>(
        builder: (_, secondPageNotifier, __) {
          secondPageNotifier.initialize();
          return Scaffold(
            appBar: AppBar(
              title: const Text('providerを使用したライフサイクル'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Flutter LifeCycle Status',
                  ),
                  Text(
                    '${secondPageNotifier.getState.toString()}',
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
