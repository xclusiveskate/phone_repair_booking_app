import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:repair_app/extensions/int_extension.dart';
import 'package:repair_app/extensions/string_extension.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselDemo extends StatefulWidget {
  @override
  State<CarouselDemo> createState() => _CarouselDemoState();
}

class _CarouselDemoState extends State<CarouselDemo> {
  CarouselController buttonCarouselController = CarouselController();
  List<String> carouselitems = [
    "laptops",
    "phone",
    "tabs",
    "console",
    "watch",
    "camera",
    "headset",
    "speaker"
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width,
        // color: AppColors.backgroundColor2,
        padding: EdgeInsets.zero,
        child: CarouselSlider(
          items: carouselitems
              .map((e) => Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      e.pngImage,
                      fit: BoxFit.fill,
                    ),
                  )))
              .toList(),
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
            autoPlayCurve: Curves.easeInCubic,
            enlargeCenterPage: true,
            viewportFraction: 1,
            aspectRatio: 2.0,
            initialPage: 2,
            height: 200,
            scrollDirection: Axis.vertical,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
        ),
      ),
      12.height,
      AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: carouselitems.length,
        duration: Duration(milliseconds: 400),
        effect: SwapEffect(),
      )
    ]);
  }
}


      // height: 400,
      // aspectRatio: 16/9,
      // viewportFraction: 0.8,
      // initialPage: 0,
      // enableInfiniteScroll: true,
      // reverse: false,
      // autoPlayAnimationDuration: Duration(milliseconds: 800),
      // autoPlayCurve: Curves.fastOutSlowIn,
      // enlargeCenterPage: true,
      // enlargeFactor: 0.3,
      // scrollDirection: Axis.horizontal,
