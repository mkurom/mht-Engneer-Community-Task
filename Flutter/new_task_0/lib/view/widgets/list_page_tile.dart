import 'package:flutter/material.dart';

class ListPageTile extends StatelessWidget {
  const ListPageTile({
    Key? key,
    required this.title,
    required this.description,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(title),
                  Text(description),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
