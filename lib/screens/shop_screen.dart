import 'package:flutter/material.dart';
import 'package:rokaru/widgets/bars.dart';

class ShopScreen extends StatelessWidget {
  static final String _id = 'shop';
  static String get id => _id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0.0, 0.0),
        child: AppBar(),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                TopBar(icon: 'cart'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
