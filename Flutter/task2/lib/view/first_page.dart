import 'package:flutter/material.dart';
import 'package:task1/view/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with WidgetsBindingObserver {
  int _counter = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              child: const Text('goto next page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<int>(
                    builder: (context) => SecondNotifierPage(
                      count: _counter,
                    ),
                  ),
                ).then((value) {
                  setState(() {
                    _counter += value!;
                  });
                });
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
