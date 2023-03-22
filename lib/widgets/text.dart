import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegularText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  const RegularText({ Key? key,required this.text,required this.color,required this.size})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.notoSans(
        fontSize: size,
        color: color,
      ),
    );
  }
}

class BoldText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

   BoldText({ Key? key,required this.text, required this.size, required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.notoSans(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class ShadowBoldText extends StatefulWidget {
  final String text;
  final Color color;
  final double size;

  ShadowBoldText({Key? key, required this.text, required this.color, required this.size})
      : super(key: key);
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.notoSans(
          fontSize: size,
          color: color,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              blurRadius: 1,
              offset: Offset(1, 1),
            ),
          ]),
    );
  }
  
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    throw UnimplementedError();
  }
}
