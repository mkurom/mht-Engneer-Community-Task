import 'package:flutter/material.dart';
import 'package:task1/view/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  int _counter = 0;

  AppLifecycleState _state;
  Size _lastSize;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _lastSize = WidgetsBinding.instance.window.physicalSize;
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  // アプリのライフサイクル変更時
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      _state = state;
    });

    print('state = $state');
  }

  // アプリケーションのサイズが変更した時の処理
  @override
  void didChangeMetrics() {
    setState(() {
      _lastSize = WidgetsBinding.instance.window.physicalSize;
    });

    print(_lastSize);
  }

  @override
  Future<bool> didPushRoute(String route) async {
    print(route);

    return Future<bool>.value(false);
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Flutter LifeCycle Status',
            ),
            Text(
              '${_state.toString()}',
            ),
            Text('Current size: $_lastSize'),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              child: const Text('StatelessWidget + Navigator.push'),
              onPressed: () {
                //StatelessWidget
                // スタック状態の時はAppLifecycleStateは動作する
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => SecondPage(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child:
                  const Text('StatelessWidget + Navigator.pushAndRemoveUntil'),
              onPressed: () {
                //StatelessWidget
                // 後ろのページを破棄すると、AppLifecycleStateは動作しない
                Navigator.pushAndRemoveUntil<void>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ),
                    (_) => false);
              },
            ),
            ElevatedButton(
              child: const Text('StatelessWidget + changeNotifier + provider'),
              onPressed: () {
                //StatelessWidget + changeNotifier + provider
                Navigator.pushAndRemoveUntil<void>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondNotifierPage(),
                    ),
                    (_) => false);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
