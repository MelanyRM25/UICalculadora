import 'package:calculadora_app/pages/Widgets/boton_igual.dart';
import 'package:calculadora_app/pages/Widgets/button.dart';
import 'package:calculadora_app/pages/Widgets/pantalla.dart';
import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  String output = "0";

  Widget calcButton(String buttonText, Color buttonColor) {
    return SizedBox(
      width: 70.0,
      height: 70.0,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            output += buttonText;
          });
        },
        //onPressed: onPress(),
        //estilo de boton general
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(10),
            backgroundColor: buttonColor),

        child: Text(
          buttonText,
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(

          ///FONDO
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              const Color.fromARGB(255, 238, 238, 238),
              const Color.fromARGB(255, 184, 233, 198)
            ],
          )),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 232, 239, 234),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(35),
                          bottomLeft: Radius.circular(35))),
                  child: Column(
                    children: [
                      SizedBox(height: 60.0),
                      pantallaCalc(output, 50),
                      pantallaCalc("4", 60),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  calcButton("AC", const Color.fromARGB(229, 146, 237, 222)),
                  calcButton(
                    "⌫",
                    const Color.fromARGB(255, 208, 245, 208),
                  ),
                  calcButton(
                    "%",
                    const Color.fromARGB(255, 208, 245, 208),
                  ),
                  calcButton(
                    "÷",
                    const Color.fromARGB(255, 208, 245, 208),
                  )
                ],
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Button(background: Colors.white, btntext: "7"),
                  Button(background: Colors.white, btntext: "8"),
                  Button(background: Colors.white, btntext: "9"),
                  Button(
                      background: const Color.fromARGB(255, 208, 245, 208),
                      btntext: "×")
                ],
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Button(background: Colors.white, btntext: "4"),
                  Button(background: Colors.white, btntext: "5"),
                  Button(background: Colors.white, btntext: "6"),
                  Button(
                      background: const Color.fromARGB(255, 208, 245, 208),
                      btntext: "-")
                ],
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Button(background: Colors.white, btntext: "1"),
                  Button(background: Colors.white, btntext: "2"),
                  Button(background: Colors.white, btntext: "3"),
                  Button(
                      background: const Color.fromARGB(255, 208, 245, 208),
                      btntext: "+")
                ],
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Button(background: Colors.white, btntext: "0"),
                  Button(background: Colors.white, btntext: "."),
                  IgualBtn(background: Colors.greenAccent, text: "="),
                ],
              ),
              SizedBox(height: 10),
            ],
          )),
    ));
  }
}
