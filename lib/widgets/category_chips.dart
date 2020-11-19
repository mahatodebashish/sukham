import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(CategoryChips());
}

class CategoryChips extends StatelessWidget {
  String tickColor,textColor,text,bgColor;

  CategoryChips( {/*this.tickColor,this.textColor,*/this.text/*,this.bgColor*/});
  @override
  Widget build(BuildContext context) {
    return  Container(

        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(40.0),
        constraints: BoxConstraints.expand(
            height: 50
        ),
        decoration: BoxDecoration(
            color: Colors.white60,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.blueGrey,
                offset: Offset(2.0, 1.0),
                blurRadius: 1.0,
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(5))
        ),
        child: Column(
          children: [
            Text('$text',
              style: GoogleFonts.cevicheOne(),
              textAlign: TextAlign.center,
            ),


          ],
        )

    );
  }


}
