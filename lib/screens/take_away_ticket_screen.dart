import 'package:flutter/material.dart';
import 'package:rokaru/controllers/map_controller.dart';
import 'package:rokaru/widgets/bars.dart';
import 'package:rokaru/widgets/cards.dart';
import 'package:rokaru/widgets/pressables.dart';
import 'package:rokaru/widgets/rokaru.dart';

class TakeAwayTicketScreen extends StatelessWidget {
  static String _id = 'takeway_ticket';
  static String get id => _id;
  final MapController _mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0.0, 0.0),
        child: AppBar(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TopBar(),
            Rokartle(
              icon: 'paperclip-blur',
              title: 'Tiket Take Away',
              subtitle: 'Tiket untuk Ayam Geprek Kak Mey',
            ),
            SizedBox(height: 40.0),
            TakeAwayTicket(
              title: 'Ayam Geprek Kak Mey',
              date: 'Senin, 12 September 2021',
              time: '12:00',
            ),
            SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Wrap(
                alignment: WrapAlignment.center,
                runSpacing: 8.0,
                spacing: 8.0,
                children: [
                  Button(
                    text: 'Arahkan',
                    icon: 'direction',
                    onTap: () => _mapController.openMap(
                      3.6107636,
                      98.6490592,
                      'Ayam Geprek Kak Mey',
                    ),
                  ),
                  Button(
                    text: 'Telepon',
                    icon: 'call',
                    onTap: () => print('ok'),
                  ),
                  Button(
                    text: 'Chat',
                    icon: 'chat-red',
                    onTap: () => print('ok'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
