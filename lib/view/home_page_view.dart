import 'package:flutter/material.dart';
import 'package:hpm_app/view/Widgets_homePage/widget_box_especialidades.dart';
import 'package:hpm_app/view/widgets_homePage/widget_box_identificacao.dart';
import 'package:hpm_app/view/widgets_homePage/widget_box_noticias.dart';
import 'package:hpm_app/view/widgets_homePage/widget_calendario.dart';

import 'Widgets_homePage/widget_search.dart';

// ignore: must_be_immutable
class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final ScrollController _scrollController = ScrollController();

  animateToMaxMin(double max, double min, double direction, int seconds,
      ScrollController scrollController) {
    scrollController
        .animateTo(direction,
            duration: Duration(seconds: seconds), curve: Curves.linear)
        .then((value) {
      direction = direction == max ? min : max;
      animateToMaxMin(max, min, direction, seconds, scrollController);
    });
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      double minScrollExtent1 = _scrollController.position.minScrollExtent;
      double maxScrollExtent1 = _scrollController.position.maxScrollExtent;

      //
      animateToMaxMin(maxScrollExtent1, minScrollExtent1, maxScrollExtent1, 50,
          _scrollController);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(248, 248, 245, 245),
      body: ListView(
        children: [
          Container(
              decoration: BoxDecoration(
                color: Colors.teal[700],
              ),
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Column(
                children: [
                  const BoxIdentificacao(),
                  const SearchTextField(),
                  Calendario()
                ],
              )),
          const BoxEspecialidades(),
          BoxNoticia(_scrollController),
        ],
      ),
    );
  }
}
