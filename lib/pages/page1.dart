import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:neumorphic/neumorphic.dart';



class Page1  extends StatelessWidget {

  final String phone = 'tel:+352661585300';

  var whatsapp ="whatsapp://send?phone=+352661585300";

  var facebook = "https://www.facebook.com/FranckREMAX/";

  var linkremax = "https://www.remax.lu/fr-lu/agents/centre/mersch-mersch/franck-ehrhart/280271008";



  _callPhone() async {
    if (await canLaunch(phone)) {
      await launch(phone);
    } else {
      throw 'Could not Call Phone';
    }
  }

  _launchEmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'franck.ehrhart@remax.lu',
      query: 'subject=Contact', //add subject and body here
    );

    var url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchWhatsApp() async {
    if (await canLaunch(whatsapp)) {
      await launch(whatsapp);
    } else {
      throw 'Could not open WhatsApp';
    }
  }

  _launchFacebook() async {
    if (await canLaunch(facebook)) {
      await launch(facebook);
    } else {
      throw 'Could not launch $facebook';
    }
  }

  _launchLinkRemax() async {
    if (await canLaunch(linkremax)) {
      await launch(linkremax);
    } else {
      throw 'Could not launch $linkremax';
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
            CircleAvatar(
              radius: 90.0,
              backgroundImage: AssetImage('assets/images/1.jpg'),
            ),
            Text(
              'Franck Ehrhart',
              style: TextStyle(
              //  fontFamily: 'Pacifico',
                fontSize: 30.0,
                letterSpacing: 2.5,
                color: Colors.black,
              ),
            ),
            Text(
              'RE/MAX - Immo Experts',
              style: TextStyle(
             //   fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
                letterSpacing: 2.5,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.blue.shade100,
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
                  Icons.phone,
                  color: Colors.blue.shade900,
                ),
                title: Text(
                  '+352 661 585 300',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Source Sans Pro',
                    color: Colors.blue.shade900,
                  ),
                ),
                onTap: _callPhone,
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
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: ListTile(
            leading: Icon(
              Icons.email,
              color: Colors.blue.shade900,
            ),
            title: Text(
              'franck.ehrhart@remax.lu',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Source Sans Pro',
                color: Colors.blue.shade900,
              ),
            ),
            onTap: _launchEmail,
          ),
        ),

        Container (
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  InkWell(
                    splashColor: Colors.blue,
                    highlightColor: Colors.blue.withOpacity(1),
                    radius: 50,
                    customBorder: CircleBorder(),
                    onTap: _launchLinkRemax,
                    child: Image.asset(
                      'assets/images/remax.png',
                      height: 50,
                      width: 50,
                    ),
                  ),

                  InkWell(
                    splashColor: Colors.red,
                    highlightColor: Colors.blue.withOpacity(1),
                    radius: 50,
                    customBorder: CircleBorder(),
                    onTap: _launchWhatsApp,
                    child: Image.asset(
                      'assets/images/whatsapp.png',
                      height: 50,
                      width: 50,
                    ),
                  ),

                  InkWell(
                    splashColor: Colors.blue,
                    highlightColor: Colors.blue.withOpacity(1),
                    radius: 50,
                    customBorder: CircleBorder(),
                    onTap: _launchFacebook,
                    child: Image.asset(
                      'assets/images/facebook.png',
                      height: 40,
                      width: 40,
                    ),
                  )

                ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}