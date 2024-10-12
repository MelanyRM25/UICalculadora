import 'package:flutter/material.dart';

class IgualBtn extends StatelessWidget {
  final Color background;
  final String text;
  //final Function onPressed;

  const IgualBtn({
    super.key,
    required this.background,
    required this.text,
    //required this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 155, // <-- Your width
        height: 60,
        child: ElevatedButton(
          onPressed: () {},
          //onPressed: onPress(),
          //estilo de boton general
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.zero,
              backgroundColor: background),

          child: Text(
            text,
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w400),
          ),
        ));
  }
}
