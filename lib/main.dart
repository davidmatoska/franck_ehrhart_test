import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:franck_ehrart/pages/page1.dart';
import 'package:franck_ehrart/pages/page2.dart';
import 'package:franck_ehrart/pages/page3.dart';
import 'package:franck_ehrart/pages/page4.dart';
import 'package:franck_ehrart/pages/page5.dart';
import'package:flutter/services.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomNavBar()
)
);

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int pageIndex = 0;

  // Create all the pages
  final Page1 _page1 = new Page1 ();
  final Page2 _page2 = new Page2 ();
  final Page3 _page3 = new Page3 ();
  final Page4 _page4 = new Page4 ();
  final Page5 _page5 = new Page5 ();

  Widget _showPage = new Page1();

  Widget _pageChooser (int page) {
    switch (page) {
      case 0:
        return _page1;
        break;
      case 1:
        return _page2;
        break;
      case 2:
        return _page3;
        break;
      case 3:
        return _page4;
        break;
      case 4:
        return _page5;
        break;
      default:
        return new Container(
          child: new Center(
            child: new Text (
              'no page found',
              style: new TextStyle(fontSize:30),
            ),
          ),
        );
    }

  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
         // initialIndex: pageIndex,
          items: <Widget>[
            Icon(Icons.person, size: 30, color:Colors.white),
            Icon(Icons.star, size: 30, color:Colors.white),
            Icon(Icons.explore, size: 30, color:Colors.white),
            Icon(Icons.thumb_up, size: 30, color:Colors.white),
            Icon(Icons.euro_symbol, size: 30, color:Colors.white),

          ],
          color: Colors.blue.shade900,
          buttonBackgroundColor: Colors.red.shade800,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeIn,
          animationDuration: Duration(milliseconds: 400),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Colors.white,
          child: Center(
           // child: Text(_page.toString(), textScaleFactor: 10.0),
            child: _showPage,
          ),
        )
    );
  }
}
