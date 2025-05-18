import 'package:flutter/material.dart';

import '../model/product_response.dart';

class ProductDetailProvider with ChangeNotifier {
  int currentPage = 0;
  int quantity = 1;
  bool isProductInfoExpanded = false;
  int selectedColorIndex = 0;
  bool isLoading = true;
  String? errorMessage;
  ProductDetails? productDetails;
  List<String> imageUrls = [];

  void setProductDetails(ProductDetails details) {
    productDetails = details;
    imageUrls = details.data.configurableOption[0].attributes[0].images;
    isLoading = false;
    notifyListeners();
  }

  void setError(String message) {
    errorMessage = message;
    isLoading = false;
    notifyListeners();
  }

  void setCurrentPage(int index) {
    currentPage = index;
    notifyListeners();
  }

  void toggleProductInfoExpanded() {
    isProductInfoExpanded = !isProductInfoExpanded;
    notifyListeners();
  }

  void setSelectedColorIndex(int index) {
    selectedColorIndex = index;
    notifyListeners();
  }

  void increaseQuantity() {
    quantity++;
    notifyListeners();
  }

  void decreaseQuantity() {
    if (quantity > 1) {
      quantity--;
      notifyListeners();
    }
  }
}