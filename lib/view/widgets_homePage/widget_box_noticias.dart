import 'package:flutter/material.dart';
import 'package:hpm_app/noticias/banco_de_noticias.dart';
import 'package:hpm_app/view/widgets_homePage/widget_noticia_list.dart';

class BoxNoticia extends StatefulWidget {
  final ScrollController _scrollController;
  const BoxNoticia(this._scrollController, {Key? key}) : super(key: key);

  @override
  State<BoxNoticia> createState() => _BoxNoticiaState();
}

class _BoxNoticiaState extends State<BoxNoticia> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Últimas Noticias",
            style: TextStyle(fontSize: 20),
          ),
          NoticiasList(
            scrollController: widget._scrollController,
            images: imagens,
            noticias: noticia,
          )
        ],
      ),
    );
  }
}
