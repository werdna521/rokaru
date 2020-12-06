import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rokaru/utils/color_palette.dart';
import 'package:rokaru/widgets/bars.dart';
import 'package:rokaru/widgets/pressables.dart';

class StoreScreen extends StatelessWidget {
  static final String _id = 'store';
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
            TopBar(icon: 'cart'),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StoreInfo(),
                    StoreDisplayWindow(),
                    ProductList(),
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

class StoreInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            child: Text(
              'Ayam Geprek Expert',
              style: TextStyle(
                color: ColorPalette.dark,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              children: [
                Text(
                  '4.1',
                  style: TextStyle(
                    color: ColorPalette.dark,
                    fontFamily: 'Inter',
                    fontSize: 13.0,
                  ),
                ),
                SizedBox(width: 4.0),
                SvgPicture.asset('assets/img/five-star.svg'),
                SizedBox(width: 4.0),
                Text(
                  '(403)',
                  style: TextStyle(
                    color: ColorPalette.dark,
                    fontFamily: 'Inter',
                    fontSize: 13.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Restoran',
              style: TextStyle(
                color: ColorPalette.dark,
                fontFamily: 'Inter',
                fontSize: 13.0,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: SvgPicture.asset('assets/img/map-pin.svg'),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jl. Sakiman Jaya Gg. Jaya Purnama No B88',
                        style: TextStyle(
                          color: ColorPalette.dark,
                          fontFamily: 'Inter',
                          fontSize: 13.0,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                      Text(
                        '200m (5 menit)',
                        style: TextStyle(
                          color: ColorPalette.dark,
                          fontFamily: 'Inter',
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Wrap(
              runSpacing: 8.0,
              spacing: 8.0,
              children: [
                Button(
                  text: 'Arahkan',
                  icon: 'direction',
                  onTap: () => print('ok'),
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
    );
  }
}

class StoreDisplayWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 16.0),
          child: Text(
            'Etalase',
            style: TextStyle(
              color: ColorPalette.dark,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              fontSize: 13.0,
            ),
          ),
        ),
        SizedBox(
          height: 136.0,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 24.0 : 0.0,
                  right: index == 4 ? 24.0 : 0.0,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/img/geprek.jpg',
                    width: 136.0,
                    height: 105.0,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 24.0);
            },
          ),
        ),
      ],
    );
  }
}

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 16.0),
          child: Text(
            'Barang Jualan',
            style: TextStyle(
              color: ColorPalette.dark,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              fontSize: 13.0,
            ),
          ),
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(2, (index) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: index == 0 ? 24.0 : 0.0,
                    right: index == 1 ? 24.0 : 0.0,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/img/geprek.jpg',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * 4 / 11,
                      height: MediaQuery.of(context).size.width * 4 / 11,
                    ),
                  ),
                );
              }),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 24.0);
          },
        ),
      ],
    );
  }
}
