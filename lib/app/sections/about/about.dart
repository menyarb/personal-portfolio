import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mysite/core/color/colors.dart';
import 'package:mysite/core/res/responsive.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:sizer/sizer.dart';

class AboutUtils {
  final String name;
  final String icon;

  AboutUtils({
    required this.name,
    required this.icon,
  });
}

List<AboutUtils> aboutUtils = [
  AboutUtils(
    name: 'HTML / css /js',
    icon: 'assets/imgs/html1.png',
  ),
  AboutUtils(
    name: 'Angular/ Spring Boot',
    icon: 'assets/imgs/a.png',
  ),
  AboutUtils(
    name: 'C++',
    icon: 'assets/imgs/c.PNG',
  ),
  AboutUtils(
    name: 'php',
    icon: 'assets/imgs/php.jpg',
  ),
  AboutUtils(name: '.Net/Java', icon: 'assets/imgs/java.png'),
];

// Define the _ServiceCard class
class _ServiceCard extends StatefulWidget {
  final AboutUtils about;

  const _ServiceCard({Key? key, required this.about}) : super(key: key);

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<_ServiceCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: (isHovering) {
        if (isHovering) {
          setState(() => isHover = true);
        } else {
          setState(() => isHover = false);
        }
      },
      child: Container(
        width: Responsive.isTablet(context) ? 400 : 300,
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        decoration: BoxDecoration(
          gradient: isHover ? pinkpurple : theme.serviceCard,
          borderRadius: BorderRadius.circular(15),
          boxShadow: isHover ? [primaryColorShadow] : [blackColorShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.about.icon,
              height: 60,
            ),
            SizedBox(height: 3.w),
            Space.y(3.w)!,
            Text(
              widget.about.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isHover ? whiteColor : theme.textColor,
              ),
            ),
            Space.y(1.w)!,
          ],
        ),
      ),
    );
  }
}
class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 40,
      
      ),
      textAlign: TextAlign.center,
    );
  }
}
class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width / 8, vertical: 20),
      child: Column(
        children: [
          Space.y(10.w)!,
          CustomSectionHeading(text: "\ncompétences"),
          Space.y(3.w)!,
          Space.y(2.w)!,
          CarouselSlider.builder(
            itemCount: aboutUtils.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Padding(
              padding: EdgeInsets.symmetric(vertical: 0.5.w),
              child: _ServiceCard(about: aboutUtils[itemIndex]),
            ),
            options: CarouselOptions(
              viewportFraction: 0.6,
              height: 300,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enableInfiniteScroll: false,
            ),
          )
        ],
      ),
    );
  }
}
