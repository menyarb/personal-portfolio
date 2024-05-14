import 'package:flutter/material.dart';
import 'portfolio_d.dart';
import 'portfolio_m.dart';
import 'package:mysite/core/res/responsive.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: PortfolioM(),
      tablet: PortfolioM(),
      desktop: PortfolioDesktop(),
    );
  }
}
