import 'package:flutter/material.dart';
import 'package:hpm_app/view/widgets_homePage/widget_noticias_item.dart';

class NoticiasList extends StatelessWidget {
  ScrollController scrollController;

  List? noticias;
  List? images;

  NoticiasList(
      {required this.scrollController, this.images, this.noticias, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      height: 150,
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: noticias?.length,
        itemBuilder: (context, index) {
          return NoticiaItem(
              noticias: noticias,
              images: images,
              index: index); // NoticiasItem(_,_);
        },
      ),
    );
  }
}
