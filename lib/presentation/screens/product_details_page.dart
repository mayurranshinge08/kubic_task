import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:kubic_task/presentation/screens/widgets/dot_slider.dart';
import 'package:kubic_task/presentation/screens/widgets/price_details.dart';
import 'package:kubic_task/presentation/screens/widgets/product_options.dart';
import 'package:kubic_task/presentation/screens/widgets/quantity_box.dart';
import 'package:kubic_task/presentation/screens/widgets/slider_image.dart';
import 'package:kubic_task/presentation/screens/widgets/tabby_box.dart';
import 'package:provider/provider.dart';

import '../../model/product_response.dart';
import '../../network/api_client.dart';
import '../../provider/product_detail_provider.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final PageController _pageController = PageController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _fetchProductDetails();
  }

  Future<void> _fetchProductDetails() async {
    final provider = Provider.of<ProductDetailProvider>(context, listen: false);
    try {
      final dio = Dio(
        BaseOptions(
          contentType: "application/json",
          responseType: ResponseType.json,
        ),
      );
      final apiClient = ApiClient(dio);
      final responseString = await apiClient.getProductDetails(
        '6701',
        '253620',
        'en',
        'KWD',
      );
      final jsonMap = json.decode(responseString);
      final productDetails = ProductDetails.fromJson(jsonMap);
      provider.setProductDetails(productDetails);
    } catch (e) {
      provider.setError("Failed to load product details");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductDetailProvider>(
      builder: (context, provider, child) {
        if (provider.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (provider.productDetails == null) {
          return Center(child: Text(provider.errorMessage ?? 'Unknown error'));
        }

        final data = provider.productDetails!.data;

        return SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              SliderImage(pageController: _pageController),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    DotSlider(pageController: _pageController),
                    const SizedBox(height: 16),
                    PriceDetails(data: data),
                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Color:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    ProductOption(data: data),
                    const SizedBox(height: 12),
                    TabbyBox(),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Quantity",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    QuantityBox(),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        provider.toggleProductInfoExpanded();
                        if (provider.isProductInfoExpanded) {
                          Future.delayed(const Duration(milliseconds: 100), () {
                            _scrollController.animateTo(
                              _scrollController.position.maxScrollExtent,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeOut,
                            );
                          });
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "PRODUCT INFORMATION",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Icon(
                            provider.isProductInfoExpanded
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    if (provider.isProductInfoExpanded)
                      Html(data: data.description),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
