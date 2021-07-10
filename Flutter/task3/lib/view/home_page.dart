import 'package:flutter/material.dart';
import 'package:task3/model/alphaget_list.dart';
import 'package:task3/view/second_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Alphabet _alphabet = Alphabet();
  final container = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('PrimaryScrollController無効'),
      ),
      body: Center(
        child: Container(
            child: ListView.builder(
          controller: container,
          itemCount: _alphabet.list.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: screenSize.width,
              height: 60,
              child: InkWell(
                onTap: () {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(
                        alphabet: _alphabet.list,
                      ),
                    ),
                  );
                },
                child: Center(
                  child: Text(
                    _alphabet.list[index],
                  ),
                ),
              ),
            );
          },
        )),
      ),
    );
  }
}
