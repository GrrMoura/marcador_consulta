import 'package:flutter/material.dart';
import 'package:hpm_app/view/widgets_homePage/widget_especialidade_list.dart';

class BoxEspecialidades extends StatelessWidget {
  const BoxEspecialidades({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: const [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                "Especialidades",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          EspecialidadeList()
        ],
      ),
    );
  }
}
