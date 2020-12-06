import 'package:flutter/material.dart';
import 'package:rokaru/screens/shopping_detail_screen.dart';
import 'package:rokaru/utils/color_palette.dart';
import 'package:rokaru/widgets/bars.dart';
import 'package:rokaru/widgets/brands.dart';
import 'package:rokaru/widgets/pressables.dart';

class ProductScreen extends StatelessWidget {
  static String _id = 'product';
  static String get id => _id;

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
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TopBar(icon: 'cart'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'assets/img/geprek.jpg',
                          width: MediaQuery.of(context).size.width - 32.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ayam Geprek',
                                style: TextStyle(
                                  color: ColorPalette.dark,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                ),
                              ),
                              Text(
                                'Rp25.000',
                                style: TextStyle(
                                  color: ColorPalette.dark,
                                  fontFamily: 'Inter',
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                          RaisedIconButton(
                            color: ColorPalette.red,
                            icon: 'heart',
                            onTap: () => print('cinta'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: SizedBox(
                        width: 160.0,
                        child: Stack(
                          children: [
                            Gojek(),
                            Positioned(
                              left: 80.0,
                              bottom: 2.0,
                              child: Grab(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        'Ayam geprek adalah makanan ayam goreng tepung khas Indonesia yang diulek atau dilumatkan bersama sambal bajak. Kini ayam geprek telah menjadi hidangan populer yang dapat ditemukan di hampir semua kota besar di Indonesia, tetapi asal mula ayam geprek berasal dari kota Yogyakarta.',
                        style: TextStyle(
                          color: ColorPalette.dark,
                          fontFamily: 'Inter',
                          fontSize: 12.0,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 24.0,
              left: 24.0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 48.0,
                child: Wrap(
                  direction: Axis.horizontal,
                  runSpacing: 8.0,
                  spacing: 8.0,
                  alignment: WrapAlignment.center,
                  children: [
                    Button(
                      icon: 'order',
                      text: 'Pesan Sekarang',
                      onTap: () =>
                          Navigator.of(context).pushNamed(ShoppingDetail.id),
                    ),
                    Button(
                      icon: 'cart-yellow',
                      text: 'Tambahkan ke Keranjang',
                      onTap: () =>
                          Navigator.of(context).pushNamed(ShoppingDetail.id),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
