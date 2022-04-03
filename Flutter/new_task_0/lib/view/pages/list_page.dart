import 'package:flutter/material.dart';
import 'package:new_task_0/view/widgets/list_page_tile.dart';

///
import 'package:new_task_0/mock_data/sample_data.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('list page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: sampleData.length,
          itemBuilder: (BuildContext context, int index) {
            return ListPageTile(
              title: sampleData[index],
              description: '',
              onTap: () {
                print('tap ${sampleData[index]}');
              },
            );
          },
        ),
      ),
    );
  }
}
