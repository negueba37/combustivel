import 'package:flutter/material.dart';

class LoadinButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  Function func;
  var text = "";
  LoadinButton({
    required this.busy,
    required this.invert,
    required this.func,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: const CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            width: double.infinity,
            margin: const EdgeInsets.all(30),
            height: 60,
            decoration: BoxDecoration(
              color: invert
                  ? Theme.of(context).primaryColor
                  : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: TextButton(
              onPressed: () {
                func();
              },
              child: Text(
                text,
                style: TextStyle(
                  color: invert ? Colors.white : Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontFamily: "Big Shoulders Display",
                ),
              ),
            ),
          );
  }
}
