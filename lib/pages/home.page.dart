import 'package:combustivelaog/widget/logo_widget.dart';
import 'package:combustivelaog/widget/submit-form.dart';
import 'package:combustivelaog/widget/sucess.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _color = Colors.deepPurple;
  TextEditingController _gasCtrl = TextEditingController();
  TextEditingController _alcCtrl = TextEditingController();
  bool _busy = false;
  bool _completed = false;
  String _resultText = "Compensa utilizar Álcool";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        duration: Duration(milliseconds: 1200),
        color: _color,
        child: ListView(
          children: [
            const Logo(),
            _completed
                ? Sucess(
                    result: _resultText,
                    func: reset,
                  )
                : SubmitForm(
                    alcCtrl: _alcCtrl,
                    gasCtrl: _gasCtrl,
                    busy: _busy,
                    submitFunc: () {
                      calculate();
                    }),
          ],
        ),
      ),
    );
  }

  Future calculate() {
    double alc =
        double.parse(_alcCtrl.text.replaceAll(RegExp(r'[,.]'), '')) / 100;
    double gas =
        double.parse(_gasCtrl.text.replaceAll(RegExp(r'[,.]'), '')) / 100;
    double res = alc / gas;
    setState(() {
      _completed = false;
      _busy = true;
      _color = Colors.deepPurpleAccent;
    });

    return Future.delayed(
        const Duration(seconds: 2),
        () => {
              setState(() {
                if (res >= 0.7) {
                  _resultText = "Compensa utilizar Gasolina";
                } else {
                  _resultText = "Compensa utilizar Álcool";
                }
                _busy = false;
                _completed = true;
              })
            });
  }

  reset() {
    setState(() {
      _alcCtrl = TextEditingController();
      _gasCtrl = TextEditingController();
      _completed = false;
      _busy = false;
      _color = Colors.deepPurple;
    });
  }
}
