import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/product_response.dart';
import '../../../provider/product_detail_provider.dart';

class ProductOption extends StatelessWidget {
  const ProductOption({
    super.key,
    required this.data,
  });

  final ProductInfo data;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductDetailProvider>(context);
    return SizedBox(
      height: 56,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => provider.setSelectedColorIndex(index),
            child: Container(
              margin: const EdgeInsets.only(right: 8),
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                border: Border.all(
                  color: provider.selectedColorIndex == index ? Colors.black : Colors.transparent,
                  width: 2,
                ),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(
                  data.configurableOption[0].attributes[0].images.first,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}