import 'package:flutter/material.dart';
import 'package:rokaru/screens/home_screen.dart';
import 'package:rokaru/screens/take_away_ticket_screen.dart';
import 'package:rokaru/utils/color_palette.dart';
import 'package:rokaru/widgets/bars.dart';
import 'package:rokaru/widgets/cards.dart';
import 'package:rokaru/widgets/pressables.dart';
import 'package:rokaru/widgets/rokaru.dart';

class ShoppingDetail extends StatelessWidget {
  static String _id = 'shopping_detail';
  static String get id => _id;

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
            Expanded(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Rokartle(
                            icon: 'bag-blur',
                            title: 'Daftar Belanja',
                            subtitle: 'Belanja dari Ayam Geprek Kak Mey',
                          ),
                        ),
                        SizedBox(height: 32.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0),
                          child: Text(
                            'Barang yang dibeli',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 13.0,
                              color: ColorPalette.dark,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0),
                          child: SummaryCard(
                            title: 'Ayam Geprek Cheese',
                            price: 'Rp33.000',
                            image: 'geprek-cheese',
                            mime: 'jpg',
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.0),
                            child: Text(
                              'Subtotal: Rp33.000',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 13.0,
                                color: ColorPalette.dark,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 24.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0),
                          child: Text(
                            'Pengiriman',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 13.0,
                              color: ColorPalette.dark,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0),
                          child: SummaryCard(
                            title: 'Ambil di Tempat',
                            image: 'mey',
                            mime: 'jpg',
                          ),
                        ),
                        SizedBox(height: 24.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0),
                          child: Text(
                            'Pembayaran',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 13.0,
                              color: ColorPalette.dark,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0),
                          child: SummaryCard(
                            title: 'OVO',
                            subtitle: 'e-wallet',
                            image: 'ovo',
                          ),
                        ),
                        SizedBox(height: 88.0),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 24.0,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 48.0,
                      margin: EdgeInsets.only(left: 24.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TransactionButton(
                              text: 'BAYAR (RP33.000)',
                              onTap: () =>
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                TakeAwayTicketScreen.id,
                                (route) => route.settings.name == HomeScreen.id,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
