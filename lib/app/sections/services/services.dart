import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mysite/app/utils/services_utils.dart';
import 'package:mysite/app/widgets/custom_text_heading.dart';

import 'package:mysite/core/color/colors.dart';
import 'package:mysite/core/res/responsive.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:sizer/sizer.dart';

part 'widgets/_services_card.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isDesktop = screenWidth > 1024; // Example breakpoint for desktop

    return Column(
      children: [
        const CustomSectionHeading(text: '\nEXPERIENCES PROFESSIONNELLES?'),
        Space.y(3.w)!,
        // If padding is intended to affect the entire column
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              Space.y(5.w)!,
              CarouselSlider.builder(
                itemCount: servicesUtils.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  assert(itemIndex < servicesUtils.length,
                      "Index out of bounds: $itemIndex");
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 0.5.w),
                    child: _ServiceCard(service: servicesUtils[itemIndex]),
                  );
                },
                options: CarouselOptions(
                  viewportFraction:
                      isDesktop ? 0.3 : 0.8, // Show more items on desktop
                  height: isDesktop ? 500 : 300, // Larger carousel on desktop
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  enlargeCenterPage:
                      !isDesktop, // Center enlargement only on mobile
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  enableInfiniteScroll: true,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
