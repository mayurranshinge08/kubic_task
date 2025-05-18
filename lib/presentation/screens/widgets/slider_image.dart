import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/product_detail_provider.dart';

class SliderImage extends StatelessWidget {
  const SliderImage({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductDetailProvider>(context);
    return AspectRatio(
      aspectRatio: 1,
      child: PageView.builder(
        controller: _pageController,
        itemCount: provider.imageUrls.length,
        onPageChanged: provider.setCurrentPage,
        itemBuilder: (context, index) => Image.network(
          provider.imageUrls[index],
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}