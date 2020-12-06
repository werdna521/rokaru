import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rokaru/utils/color_palette.dart';

class Rokartle extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;

  Rokartle({this.icon, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          child: Container(
            width: 88.0,
            height: 88.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/img/$icon.png'),
                fit: BoxFit.contain,
              ),
            ),
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.0),
                  ),
                ),
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: ColorPalette.dark,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 36.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              subtitle,
              style: TextStyle(
                color: ColorPalette.dark,
                fontFamily: 'Inter',
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
