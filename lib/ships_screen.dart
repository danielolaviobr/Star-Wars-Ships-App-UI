import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:star_wars/widgets/header.dart';
import 'package:star_wars/widgets/ship_card.dart';

class ShipsScreen extends StatefulWidget {
  @override
  _ShipsScreenState createState() => _ShipsScreenState();
}

class _ShipsScreenState extends State<ShipsScreen> {
  ScrollController _controller = ScrollController();
  Color appBarColor = Colors.black;
  double appBarHeight = 0;
  Widget appBarTitle = SizedBox(width: 1);
  bool appBaractive = false;
  double logoResize = 1;

  @override
  void initState() {
    super.initState();
    _controller.addListener(appBarChecker);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void onScroll() {
    print(_controller.hasClients);
    print(_controller.offset);
  }

  void appBarChecker() {
    if (_controller.hasClients && _controller.offset < 1) {
      _controller.jumpTo(0);
    }
    if (_controller.hasClients && _controller.offset > 100) {
      setState(() {
        appBarHeight = 70;
        appBarColor = Colors.black;
        appBarTitle = Image.asset(
          'assets/images/star_wars_logo.png',
          scale: 7,
        );
        appBaractive = true;
      });
    } else {
      setState(() {
        logoResize = _controller.offset;
        appBarColor = Colors.black;
        appBarHeight = 0;
        appBarTitle = SizedBox(width: 1);
        appBaractive = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBarTitle,
        backgroundColor: appBarColor,
        elevation: 10,
        shadowColor: Colors.transparent,
        toolbarHeight: appBarHeight,
      ),
      backgroundColor: Color(0xfff3eded),
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: [
            appBaractive ? SizedBox(height: 120) : Header(resize: logoResize),
            SizedBox(
              height: 20.0,
            ),
            ShipCard(
              image: 'assets/images/tie_fighter.png',
              title: 'Tie Fighter',
              body:
                  'Propelled by Twin Ion Engines, TIE fighters are fast, agile, yet fragile starfighters produced by Sienar Fleet Systems for the Galactic Empire.',
            ),
            SizedBox(
              height: 20.0,
            ),
            ShipCard(
              image: 'assets/images/x_wing.png',
              title: 'X-Wing',
              body:
                  'Propelled by Twin Ion Engines, TIE fighters are fast, agile, yet fragile starfighters produced by Sienar Fleet Systems for the Galactic Empire.',
            ),
            SizedBox(
              height: 20.0,
            ),
            ShipCard(
              image: 'assets/images/star_destroyer.png',
              title: 'Star Destroyer',
              body:
                  'Propelled by Twin Ion Engines, TIE fighters are fast, agile, yet fragile starfighters produced by Sienar Fleet Systems for the Galactic Empire.',
            ),
            SizedBox(
              height: 20.0,
            ),
            ShipCard(
              image: 'assets/images/death_star.png',
              title: 'Death Star',
              body:
                  'Propelled by Twin Ion Engines, TIE fighters are fast, agile, yet fragile starfighters produced by Sienar Fleet Systems for the Galactic Empire.',
            ),
            SizedBox(
              height: 2000.0,
            ),
          ],
        ),
      ),
    );
  }
}
