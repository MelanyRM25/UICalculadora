import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color background;
  final String btntext;

  //final Function onPress;

  const Button({
    super.key,
    required this.background,
    required this.btntext,
    //required this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.0,
      height: 70.0,
      child: ElevatedButton(
        onPressed: () {},
        //onPressed: onPress(),
        //estilo de boton general
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(10),
            backgroundColor: background),

        child: Text(
          btntext,
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
