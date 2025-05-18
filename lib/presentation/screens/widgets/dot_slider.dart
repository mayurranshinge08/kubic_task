import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../provider/product_detail_provider.dart';

class DotSlider extends StatelessWidget {
  const DotSlider({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductDetailProvider>(context);
    return SmoothPageIndicator(
      controller: _pageController,
      count: provider.imageUrls.length,
      effect: const WormEffect(
        dotHeight: 10,
        dotWidth: 10,
        activeDotColor: Colors.black,
        dotColor: Color(0xffEBB866),
      ),
    );
  }
}