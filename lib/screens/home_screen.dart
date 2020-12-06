import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:rokaru/screens/store_screen.dart';
import 'package:rokaru/utils/color_palette.dart';
import 'package:rokaru/widgets/bars.dart';
import 'package:rokaru/widgets/cards.dart';
import 'package:rokaru/widgets/pressables.dart';

class HomeScreen extends StatelessWidget {
  static final String _id = 'home';
  static String get id => _id;
  CardController _cardController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0.0, 0.0),
        child: AppBar(),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                TopBar(icon: 'bell'),
                GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed(StoreScreen.id),
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    margin: EdgeInsets.all(24.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15.0,
                          offset: Offset(0, 5),
                          color: ColorPalette.shadow.withOpacity(.2),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 4.0,
                          top: 2.0,
                          child: SvgPicture.asset(
                            'assets/img/search.svg',
                            width: 16.0,
                            height: 16.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Pencarian',
                              style: TextStyle(
                                color: Color(0xff8BA3AA),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height - 400,
                  child: TinderSwapCard(
                    swipeUp: false,
                    swipeDown: false,
                    orientation: AmassOrientation.BOTTOM,
                    stackNum: 2,
                    swipeEdge: 4.0,
                    maxWidth: MediaQuery.of(context).size.width * 0.9,
                    maxHeight: MediaQuery.of(context).size.height - 400,
                    minWidth: MediaQuery.of(context).size.width * 0.8,
                    minHeight: MediaQuery.of(context).size.height - 420,
                    cardBuilder: (context, index) {
                      return SwipingCard();
                    },
                    totalNum: 50,
                    cardController: _cardController = CardController(),
                  ),
                ),
                SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedIconButton(
                      icon: 'thumbs-down',
                      color: ColorPalette.yellow,
                      onTap: () => _cardController.triggerLeft(),
                    ),
                    RaisedIconButton(
                      icon: 'thumbs-up',
                      color: ColorPalette.red,
                      onTap: () => _cardController.triggerRight(),
                    ),
                  ],
                ),
              ],
            ),
            BottomNav(),
          ],
        ),
      ),
    );
  }
}
