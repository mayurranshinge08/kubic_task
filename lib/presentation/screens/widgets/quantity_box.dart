import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/product_detail_provider.dart';

class QuantityBox extends StatelessWidget {
  const QuantityBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductDetailProvider>(context);
    return Row(
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(4),
          ),
          child: IconButton(
            icon: const Icon(Icons.remove, size: 16, color: Colors.white),
            onPressed: provider.decreaseQuantity,
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 40,
          height: 36,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text('${provider.quantity}', style: const TextStyle(fontSize: 16)),
        ),
        const SizedBox(width: 8),
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(4),
          ),
          child: IconButton(
            icon: const Icon(Icons.add, size: 16, color: Colors.white),
            onPressed: provider.increaseQuantity,
          ),
        ),
      ],
    );
  }
}