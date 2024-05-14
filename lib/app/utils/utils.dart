import 'package:flutter/material.dart';
import 'package:mysite/app/sections/contact/contact.dart';
import 'package:mysite/app/sections/home/home.dart';
import 'package:mysite/app/sections/map/map_mobile.dart';
import 'package:mysite/app/sections/portfolio/portfolio.dart';
import 'package:mysite/app/sections/services/services.dart';
import 'package:mysite/app/sections/about/about.dart';
import 'package:mysite/app/widgets/footer.dart';

class BodyUtils {
  static List<Widget> views = [
    Home(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    MapSample(),
    Footer(),
  ];
}
