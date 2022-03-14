import 'package:flutter/material.dart';

class BoxIdentificacao extends StatelessWidget {
  const BoxIdentificacao({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
          Text(
            "Olá,",
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ]),
        subtitle: const Padding(
          padding: EdgeInsets.only(top: 5, bottom: 10),
          child: Text(
            "Dilma Rousseff",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        trailing: Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("assets/images/dilma.jpg"),
                  fit: BoxFit.cover),
            )));
  }
}
