import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final double resize;

  const Header({Key key, this.resize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HeaderClipper(),
      child: Container(
        height: 300,
        width: double.infinity,
        color: Colors.black,
        child: Image.asset(
          'assets/images/star_wars_logo.png',
          scale: 3,
        ),
      ),
    );
  }
}

class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0.9 * size.height);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height * 0.8,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
