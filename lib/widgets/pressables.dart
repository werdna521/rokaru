import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rokaru/utils/color_palette.dart';

class RaisedIconButton extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;
  final Color color;

  RaisedIconButton({this.icon, this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 15.0,
            offset: Offset(2.0, 4.0),
            color: color.withOpacity(.5),
          ),
        ],
        borderRadius: BorderRadius.circular(28.0),
      ),
      width: 56.0,
      height: 56.0,
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(28.0),
        child: InkWell(
          splashColor: color,
          hoverColor: color,
          borderRadius: BorderRadius.circular(28.0),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(13.0),
            child: SvgPicture.asset('assets/img/$icon.svg'),
          ),
        ),
      ),
    );
  }
}

class PressableIcon extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;
  final double size;
  final double padding;

  PressableIcon({this.icon, this.onTap, this.size = 40.0, this.padding = 8.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(size / 2),
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: SvgPicture.asset('assets/img/$icon.svg'),
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback onTap;

  Button({this.text, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: ColorPalette.gray, width: 1.0),
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: [
          BoxShadow(
            color: Color(0xff000000).withOpacity(.08),
            offset: Offset(2.0, 4.0),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(24.0),
          onTap: onTap,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                          color: ColorPalette.dark,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  child: SvgPicture.asset('assets/img/$icon.svg'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
