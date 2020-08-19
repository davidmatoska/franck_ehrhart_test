import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:url_launcher/url_launcher.dart';

class Page3  extends StatelessWidget {


  _launchEmailEstimation() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'franck.ehrhart@remax.lu',
      query: "subject=Estimation&body=Bonjour Franck,%0D%0A%0D%0AJe souhaite faire estimer mon bien.%0D%0A%0D%0AMes coordonnées sont les suivantes:%0D%0APrénom et nom:%0D%0ATéléphone:%0D%0A%0D%0APour un bien situé:%0D%0A%0D%0AJe vous remercie. ", //add subject and body here
    );

    var url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/3.png",
              width: 300.0,
            ),


            Text(
              "Besoin d'une estimation?",
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
              curveType: CurveType.convex,

              // Elevation relative to parent. Main constituent of Neumorphism
              bevel: 5,

              // Specified decorations, like `BoxDecoration` but only limited
              decoration: NeumorphicDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade100,
              ),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(

                leading: Icon(
                  Icons.euro_symbol,
                  color: Colors.blue,
                ),

                title: Text(

                  "Déterminer le bon prix  est la première étape d'une transaction réussie."
                //  "J'utilise une méthode professionnelle basée sur un diagnostic complet de votre maison/appartement et une analyse du marché et de la concurrence."
                      ,
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

                leading: Icon(
                  Icons.search,
                  color: Colors.blue,
                ),

                title: Text(


                    "J'utilise une méthode professionnelle basée sur un diagnostic complet de votre bien. Une analyse du marché et de la concurrence est également réalisée."
                  ,
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

            NeuCard(
              // State of Neumorphic (may be convex, flat & emboss)
              curveType: CurveType.concave,

              // Elevation relative to parent. Main constituent of Neumorphism
              bevel: 5,

              // Specified decorations, like `BoxDecoration` but only limited
              decoration: NeumorphicDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red.shade900,
              ),
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
                title: Text(
                  'Je veux une estimation !',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Source Sans Pro',
                    color: Colors.white,
                  ),
                ),
                onTap: _launchEmailEstimation,
              ),
            ),
/*
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

                leading: Icon(
                  Icons.school,
                  color: Colors.blue,
                ),

                title: Text(


                  "Avec plus de 10 ans d'expérience au Grand-Duché, RE/MAX est expert du marché immobilier luxembourgeois. "
                  ,
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
*/

          ],
        ),
      ),
    );
  }



}
