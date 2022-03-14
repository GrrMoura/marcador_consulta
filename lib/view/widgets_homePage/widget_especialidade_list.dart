import 'package:flutter/material.dart';
import 'package:hpm_app/view/widgets_homePage/widget_especialidade_itens.dart';

class EspecialidadeList extends StatelessWidget {
  const EspecialidadeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          EspecialidadeItem("assets/images/cardiologista.png", "Cardiologista"),
          EspecialidadeItem("assets/images/ortopedia.png", "Ortopedia"),
          EspecialidadeItem("assets/images/obstetra.png", "Obstetrícia "),
          EspecialidadeItem("assets/images/plastica.png", "Cirurgia Plástica"),
          EspecialidadeItem(
              "assets/images/clinicaMedica.png", "Clínica Médica"),
          EspecialidadeItem(
              "assets/images/cirurgiaGeral.png", "Cirurgia Geral"),
          EspecialidadeItem("assets/images/cabeca.png", "Cirguia Cabeça"),
          EspecialidadeItem(
              "assets/images/cirurgiaPescoco.png", "Cirguia Pescoço"),
          EspecialidadeItem("assets/images/ginicologista.png", "Ginecologista"),
          EspecialidadeItem("assets/images/pediatria.png", "Pediatria"),
        ],
      ),
    );
  }
}
