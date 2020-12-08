import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rokaru/screens/store_screen.dart';
import 'package:rokaru/utils/color_palette.dart';

class SwipingCard extends StatelessWidget {
  final String image;
  final String name;
  final String distance;

  SwipingCard({this.image, this.name, this.distance});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(StoreScreen.id),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/$image.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
            SvgPicture.asset(
              'assets/img/five-star.svg',
              width: MediaQuery.of(context).size.width * .3,
            ),
            Text(
              distance,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SummaryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<String> details;
  final String price;
  final String image;
  final String mime;

  SummaryCard({
    this.title,
    this.subtitle,
    this.details,
    this.price,
    this.image,
    this.mime = 'png',
  });

  List<Text> _renderDetails() {
    if (details != null) {
      return details.map((text) {
        return Text(
          text,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 12.0,
            color: ColorPalette.dark,
          ),
        );
      }).toList();
    } else {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Color(0xff000000).withOpacity(.05),
            offset: Offset(0.0, 4.0),
            blurRadius: 15.0,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              'assets/img/$image.$mime',
              fit: BoxFit.cover,
              width: 56.0,
              height: 56.0,
            ),
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: ColorPalette.dark,
                  ),
                ),
                subtitle != null
                    ? Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          subtitle,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500,
                            color: ColorPalette.dark,
                          ),
                        ),
                      )
                    : SizedBox(),
                ..._renderDetails(),
                price != null
                    ? Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          price,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 13.0,
                            color: ColorPalette.dark,
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ),
          IconButton(
            icon: SvgPicture.asset('assets/img/three-dots.svg'),
            onPressed: () => print('three dots'),
          ),
        ],
      ),
    );
  }
}

class TakeAwayTicket extends StatelessWidget {
  final String title;
  final String date;
  final String time;

  TakeAwayTicket({this.title, this.date, this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 56.0,
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: ColorPalette.orange,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: ColorPalette.orange.withOpacity(.5),
            offset: Offset(0.0, 0.4),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            date,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              fontSize: 13.0,
              color: Colors.white,
            ),
          ),
          Text(
            time,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              fontSize: 13.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16.0),
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Image.asset(
                'assets/img/qr.png',
                width: 150.0,
                height: 150.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
