import 'package:flutter/material.dart';

class NoticiaItem extends StatelessWidget {
  NoticiaItem({
    Key? key,
    required this.index,
    required this.noticias,
    required this.images,
  }) : super(key: key);

  final List? noticias;
  final List? images;
  int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal[700],
      elevation: 10,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: 200,
            height: 120,
            child: Text(
              noticias?[index],
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(images?[index]),
            ),
          )
        ],
      ),
    );
  }
}
