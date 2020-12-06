import 'package:flutter/material.dart';
import 'package:rokaru/widgets/brands.dart';
import 'package:rokaru/widgets/pressables.dart';

class TopBar extends StatelessWidget {
  final String icon;

  TopBar({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Rokaru(),
              ],
            ),
          ),
          Positioned(
            left: 0.0,
            child: Navigator.of(context).canPop()
                ? PressableIcon(
                    icon: 'up',
                    onTap: () => Navigator.of(context).pop(),
                    size: 28,
                    padding: 4.0,
                  )
                : SizedBox(),
          ),
          Positioned(
            right: 0.0,
            child: icon != null
                ? PressableIcon(
                    icon: icon,
                    onTap: () => print('halo mamang'),
                    size: 28,
                    padding: 4.0,
                  )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 24.0,
      child: Container(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.symmetric(horizontal: 32.0),
        width: MediaQuery.of(context).size.width - 64.0,
        height: 64.0,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            PressableIcon(
              icon: 'home-filled',
              onTap: () {
                print('home');
              },
            ),
            PressableIcon(
              icon: 'favorite',
              onTap: () {
                print('fav');
              },
            ),
            PressableIcon(
              icon: 'chat',
              onTap: () {
                print('chat');
              },
            ),
            PressableIcon(
              icon: 'profile',
              onTap: () {
                print('profile');
              },
            ),
          ],
        ),
      ),
    );
  }
}
