import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
