import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key, required this.alphabet}) : super(key: key);
  final List<String> alphabet;

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late ScrollController container;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    container = PrimaryScrollController.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text('PrimaryScrollController有効'),
      ),
      body: Center(
        child: Container(
            child: ListView.builder(
          controller: container,
          itemCount: widget.alphabet.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: screenSize.width,
              height: 60,
              child: InkWell(
                onTap: () {
                  //
                },
                child: Center(
                  child: Text(widget.alphabet[index]),
                ),
              ),
            );
          },
        )),
      ),
    );
  }
}
