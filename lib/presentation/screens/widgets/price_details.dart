import 'package:flutter/material.dart';

import '../../../model/product_response.dart';

class PriceDetails extends StatelessWidget {
  const PriceDetails({
    super.key,
    required this.data,
  });

  final ProductInfo data;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ANESTHESIA", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(height: 4),
              Text(data.name, style: const TextStyle(fontSize: 14, color: Colors.black87)),
              const SizedBox(height: 4),
              Text("SKU: ${data.sku}", style: const TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
        ),
        Text(
          "${data.configurableOption[0].attributes[0].price} KWD",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ],
    );
  }
}