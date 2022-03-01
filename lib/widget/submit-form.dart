import 'package:flutter/material.dart';

import 'input.widget.dart';
import 'loading-button.widget.dart';

class SubmitForm extends StatelessWidget {
  TextEditingController gasCtrl = TextEditingController();
  TextEditingController alcCtrl = TextEditingController();
  var busy = false;
  Function submitFunc;
  SubmitForm({
    required this.alcCtrl,
    required this.gasCtrl,
    required this.busy,
    required this.submitFunc,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Input(
            ctrl: gasCtrl,
            title: "Gasolina",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Input(
            ctrl: alcCtrl,
            title: "Álcool",
          ),
        ),
        const SizedBox(height: 25),
        LoadinButton(
          busy: busy,
          invert: false,
          func: submitFunc,
          text: "Calcular",
        ),
      ],
    );
  }
}
