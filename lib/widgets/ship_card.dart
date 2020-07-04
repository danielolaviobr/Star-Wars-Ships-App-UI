import 'package:flutter/material.dart';

class ShipCard extends StatelessWidget {
  final String image;
  final String title;
  final String body;

  const ShipCard({
    this.image,
    this.title,
    this.body,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            color: Color(0xfff3eded),
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color: Color(0x595c5757),
                offset: Offset(0, 10),
                blurRadius: 10.0,
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(this.image),
            Expanded(
                child: Container(
              padding: EdgeInsets.only(right: 5, left: 5, bottom: 5),
              child: Column(
                children: [
                  SizedBox(height: 5.0),
                  Text(
                    this.title,
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      color: Color(0xffff6d24),
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    this.body,
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      color: Color(0xff363434),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
