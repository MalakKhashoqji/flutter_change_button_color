import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool isclicked = false;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        width:200,
        height: 50,

        child: TextButton(
          style: TextButton.styleFrom(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            // primary: Colors.white,
            backgroundColor: isclicked? Colors.deepPurpleAccent : Colors.grey[800],
          ),
          onPressed:(){
            setState(() {
              isclicked =!isclicked;
            });
          },
          child: Text(widget.text,
            style:  TextStyle(fontSize: 17,
              color: Colors.white,
            ),
          ),
        ),
      );

  }
}
