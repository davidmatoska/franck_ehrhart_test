import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:url_launcher/url_launcher.dart';

class Page5  extends StatelessWidget {


  _launchEmailParrainage() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'franck.ehrhart@remax.lu',
      query: "subject=Parrainage&body=Bonjour Franck,%0D%0A%0D%0AJe souhaite parrainer quelqu'un qui a besoin d'un conseiller immobilier.%0D%0A%0D%0AMes coordonnées sont les suivantes:%0D%0APrénom et nom:%0D%0ATéléphone:%0D%0A%0D%0AVous pouvez contacter:%0D%0APrénom et Nom:%0D%0ATéléphone:%0D%0APour un bien situé:%0D%0A%0D%0AJe vous remercie. ", //add subject and body here
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
            Image.asset("assets/images/7.png",
              width: 300.0,
            ),


            Text(
              "Parrainez un proche ",
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

                  "Vous connaissez quelqu'un qui a besoin d'un conseiller immobilier? Contactez-moi et touchez jusqu'à 10% de la commission RE/MAX! ",
                  textAlign: TextAlign.justify,
                  style: TextStyle(

                    fontFamily: 'Source Sans Pro',
                    fontSize: 12.0,
                    letterSpacing: 2.5,
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
                color: Colors.blue.shade900,
              ),
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
                title: Text(
                  'Je parraine un proche !',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Source Sans Pro',
                    color: Colors.white,
                  ),
                ),
                onTap: _launchEmailParrainage,
              ),
            ),
               ],
        ),
      ),
    );
  }

}
