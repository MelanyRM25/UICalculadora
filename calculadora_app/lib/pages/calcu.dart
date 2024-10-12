import 'package:calculadora_app/pages/Widgets/boton_igual.dart';
import 'package:flutter/material.dart';

class Calculadora1 extends StatefulWidget {
  const Calculadora1({super.key});

  @override
  State<Calculadora1> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora1> {
  //controladores para ingreso de datos y salida
  TextEditingController entrada = TextEditingController();
  TextEditingController resultado = TextEditingController();

  //FUNCIONES
  void sumar() {
    int num1 = int.parse(entrada.text);
    int num2 = int.parse(entrada.text);
    int suma = num1 + num2;
    resultado.text = suma.toString();
  }

//Widget Pantalla de entrada de datos

  Widget pantallaEntrada() {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(horizontal: 40),
      height: 120,
      width: 351,
      color: Colors.transparent,
      child: TextField(
        textInputAction: TextInputAction.none,
        keyboardType: TextInputType.number,
        style: TextStyle(
          color: Colors.black,
          fontSize: 50,
          fontWeight: FontWeight.w400,
        ),
        textAlign: TextAlign.right,
        controller: entrada,
      ),
    );
  }

//Widget Pantalla de resultados

  Widget pantallaSalida() {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(horizontal: 40),
      height: 120,
      width: 350,
      color: Colors.transparent,
      child: TextField(
        textInputAction: TextInputAction.none,
        keyboardType: TextInputType.number,
        style: TextStyle(
          color: Colors.black,
          fontSize: 60,
          fontWeight: FontWeight.w400,
        ),
        textAlign: TextAlign.right,
        controller: resultado,
      ),
    );
  }

  ///Widget para boton
  ///
  Widget calcButton(String buttonText, Color buttonColor) {
    return SizedBox(
      width: 70.0,
      height: 70.0,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            entrada.text = entrada.text + buttonText;
            print("se estan mostrando datos");
          });
        },
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

  //APLICACION CALCULADORA
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
                      pantallaEntrada(),
                      pantallaSalida(),
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
                  calcButton("7", Colors.white),
                  calcButton("8", Colors.white),
                  calcButton("9", Colors.white),
                  calcButton("x", const Color.fromARGB(255, 208, 245, 208))
                ],
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  calcButton("4", Colors.white),
                  calcButton("5", Colors.white),
                  calcButton("6", Colors.white),
                  calcButton("-", const Color.fromARGB(255, 208, 245, 208))
                ],
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  calcButton(
                    "1",
                    Colors.white,
                  ),
                  calcButton(
                    "2",
                    Colors.white,
                  ),
                  calcButton(
                    "3",
                    Colors.white,
                  ),
                  calcButton("+", const Color.fromARGB(255, 208, 245, 208))
                ],
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  calcButton("0", Colors.white),
                  calcButton(
                    ".",
                    Colors.white,
                  ),
                  IgualBtn(background: Colors.greenAccent, text: "=")
                ],
              ),
              SizedBox(height: 10),
            ],
          )),
    ));
  }
}
