import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:warships_mobile/utils/Multiplier.dart';

class TextInputField extends StatefulWidget {
  const TextInputField({super.key, required this.onClick, required this.fontSize});
  final Function onClick;
  final int fontSize;
  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
    String content="";

  @override
  Widget build(BuildContext context) {
    double multiplier=Multiplier.getMultiplier(context);
    return Container(
      width: 300*multiplier,
      height: 50,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.black)),
            width: 235*multiplier-5,
            child: TextField(
              maxLength: 15,

              style: TextStyle(
                fontSize: widget.fontSize.toDouble(),
                fontFamily: "arcade",
                color: const Color.fromRGBO(143, 255, 0, 1.0),

              ),
              decoration: InputDecoration(
                counterText:"",

              ),
              onChanged: (text){
                setState(() {
                  content=text;
                });
              },
            ),
          ),
          Container(
              decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(width: 5, color: Colors.black),
                    top: BorderSide(width: 5, color: Colors.black),
                    bottom: BorderSide(width: 5, color: Colors.black)),
              ),
              child:
                  IconButton(onPressed: (){if(content.isNotEmpty)widget.onClick(content);}, icon: Icon(Icons.arrow_forward,color: content.isEmpty?Colors.black:Colors.green,)))
        ],
      ),
    );
  }

}
