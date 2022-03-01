import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  TextEditingController ctrl = TextEditingController();
  final String? title;
  Input({required this.ctrl, required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.green,
          alignment: Alignment.centerRight,
          width: 100,
          child: Text(
            this.title!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontFamily: "Big Shoulders Display",
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: TextFormField(
            controller: this.ctrl,
            keyboardType: TextInputType.number,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontFamily: "Big Shoulders Display",
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: '0,00',
              hintStyle: TextStyle(
                  fontFamily: "Big Shoulders Display", color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
