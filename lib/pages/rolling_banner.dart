import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:intl/intl.dart';

class RollingBanner extends StatefulWidget {
  @override
  _RollingBannerState createState() => _RollingBannerState();
}

class _RollingBannerState extends State<RollingBanner> {
  int _current = 0;

  List<Map> getData() {
    return [
      {
        'image': '1.jpg',
        'title': 'Android Official Language : Start with Kotlin (November, 2017 Renewal)',
        'star_rating': 3.5,
        'star_count': 12485,
        'price': 19.00,
        'origin_price': 25.00
      },
      {
        'image': '2.jpg',
        'title': 'Pianoforall - Incredible New Way To Learn Piano & Keyboard',
        'star_rating': 1.5,
        'star_count': 19885,
        'price': 12.00,
        'origin_price': 36.00
      },
      {
        'image': '3.jpg',
        'title': 'Ultimate Google Ads / ADWords Courses 2018 - Profit With PPC!',
        'star_rating': 4.5,
        'star_count': 72485,
        'price': 11.00,
        'origin_price': 19.80
      },
      {
        'image': '4.jpg',
        'title': 'Character Art School: Complete Character Drwaing Course',
        'star_rating': 4.5,
        'star_count': 1185,
        'price': 19,
        'origin_price': 24.70
      },
      {
        'image': '5.jpg',
        'title': 'All in one Tutorial : MBA',
        'star_rating': 2.5,
        'star_count': 1825,
        'price': 12.00,
        'origin_price': 36.00
      },
      {
        'image': '6.jpg',
        'title': 'Complete Python Bootcamp: Go from zero to hero in Python 3',
        'star_rating': 1.5,
        'star_count': 665,
        'price': 12.00,
        'origin_price': 36.00
      },
      {
        'image': '7.jpg',
        'title': 'Machine Learning A-Z: Hands-On Python & R In Data Science',
        'star_rating': 2.5,
        'star_count': 655,
        'price': 14.50,
        'origin_price': 22.00
      },
      {
        'image': '8.jpg',
        'title': 'The Ultimate Drawing Course - Beginner to Advanced',
        'star_rating': 4.5,
        'star_count': 55400,
        'price': 14.00,
        'origin_price': 17.00
      }
    ];
  }

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  final oCcy = NumberFormat("#,##0");
  final oCcy2 = NumberFormat("#,##0.00");

  List getChild() {
    return map<Widget>(getData(), (index, data) {
      return Container(
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/' + data['image'],
              width: 1000.0,
              height: 1000.0,
              fit: BoxFit.fill,
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(250, 0, 0, 0),
                    Color.fromARGB(5, 0, 0, 0)
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                )),
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      data['title'],
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        StarRating(
                          size: 20.0,
                          rating: data['star_rating'],
                          color: Colors.yellow,
                          borderColor: Colors.white,
                          starCount: 5,
                        ),
                        Text(
                          "(" + oCcy.format(data['star_count']) + ")",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '\$' + oCcy2.format(data['price']),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '\$' + oCcy2.format(data['origin_price']),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          CarouselSlider(
              viewportFraction: 1.0,
              items: getChild(),
            onPageChanged: (index){
          setState((){
            _current = index;
          });
          },
    ),
          Positioned(
            top: 200,
            left: 0.0,
            right: 0.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(getData(), (index, data) {
                return Container(
                  width: 5.0,
                  height: 5.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                      color: _current == index ? Colors.white: Colors.grey),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
