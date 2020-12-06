import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Rokaru extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/img/rokaru.svg',
      width: 1 / 4 * MediaQuery.of(context).size.width,
    );
  }
}

class Gojek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/img/gojek.png',
      height: 16.0,
    );
  }
}

class Grab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/img/grab.png',
      height: 16.0,
    );
  }
}
