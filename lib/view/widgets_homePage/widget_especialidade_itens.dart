import 'package:flutter/material.dart';

class EspecialidadeItem extends StatelessWidget {
  String imagemPath;
  String especialidade;
  EspecialidadeItem(this.imagemPath, this.especialidade, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10),
          child: ClipOval(
            child: Image.asset(
              imagemPath,
              height: 60,
              width: 60,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            especialidade,
          ),
        ),
      ],
    );
  }
}
