import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';

class Page4  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/4.png",
              width: 350.0,
            ),


            Text(
              "A propos de moi: ",
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
                letterSpacing: 2.5,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            NeuCard(
              // State of Neumorphic (may be convex, flat & emboss)
              curveType: CurveType.concave,

              // Elevation relative to parent. Main constituent of Neumorphism
              bevel: 5,

              // Specified decorations, like `BoxDecoration` but only limited
              decoration: NeumorphicDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade100,
              ),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(

                title: Text(

                  "Lorsque je ne m'occupe pas de mes clients, je m'accorde du temps pour ma passion: la plongée. ",
                  textAlign: TextAlign.justify,
                  style: TextStyle(

                    fontFamily: 'Source Sans Pro',
                    fontSize: 12.0,
                    letterSpacing: 2.0,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,

                  ),

                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

}
