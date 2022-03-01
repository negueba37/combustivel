import 'package:flutter/material.dart';
import 'loading-button.widget.dart';

class Sucess extends StatelessWidget {
  final String? result;
  final Function? func;
  Sucess({this.result, this.func});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            result!,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 40,
                fontFamily: "Big Shoulders Display"),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          LoadinButton(
            busy: false,
            invert: true,
            func: func!,
            text: "Calcular novamente",
          ),
        ],
      ),
    );
  }
}
