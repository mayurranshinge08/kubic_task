// To parse this JSON data, do
//
//     final productDetails = productDetailsFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'product_response.g.dart';

@JsonSerializable()
class ProductDetails {
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "data")
  ProductInfo data;

  ProductDetails({
    required this.status,
    required this.message,
    required this.data,
  });

  factory ProductDetails.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDetailsToJson(this);
}

@JsonSerializable()
class ProductInfo {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "sku")
  String sku;
  @JsonKey(name: "is_return")
  int isReturn;
  @JsonKey(name: "celebrity_id")
  int celebrityId;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "attribute_set_id")
  String attributeSetId;
  @JsonKey(name: "price")
  String price;
  @JsonKey(name: "final_price")
  String finalPrice;
  @JsonKey(name: "status")
  String status;
  @JsonKey(name: "type")
  String type;
  @JsonKey(name: "web_url")
  String webUrl;
  @JsonKey(name: "brand_name")
  String brandName;
  @JsonKey(name: "brand")
  String brand;
  @JsonKey(name: "is_following_brand")
  int isFollowingBrand;
  @JsonKey(name: "brand_banner_url")
  String brandBannerUrl;
  @JsonKey(name: "is_salable")
  bool isSalable;
  @JsonKey(name: "is_new")
  int isNew;
  @JsonKey(name: "is_sale")
  int isSale;
  @JsonKey(name: "is_trending")
  int isTrending;
  @JsonKey(name: "is_best_seller")
  int isBestSeller;
  @JsonKey(name: "image")
  String image;
  @JsonKey(name: "created_at")
  DateTime createdAt;
  @JsonKey(name: "updated_at")
  DateTime updatedAt;
  @JsonKey(name: "weight")
  dynamic weight;
  @JsonKey(name: "description")
  String description;
  @JsonKey(name: "short_description")
  dynamic shortDescription;
  @JsonKey(name: "how_to_use")
  dynamic howToUse;
  @JsonKey(name: "manufacturer")
  dynamic manufacturer;
  @JsonKey(name: "key_ingredients")
  dynamic keyIngredients;
  @JsonKey(name: "returns_and_exchanges")
  dynamic returnsAndExchanges;
  @JsonKey(name: "shipping_and_delivery")
  dynamic shippingAndDelivery;
  @JsonKey(name: "about_the_brand")
  dynamic aboutTheBrand;
  @JsonKey(name: "meta_title")
  String metaTitle;
  @JsonKey(name: "meta_keyword")
  dynamic metaKeyword;
  @JsonKey(name: "meta_description")
  String metaDescription;
  @JsonKey(name: "size_chart")
  dynamic sizeChart;
  @JsonKey(name: "wishlist_item_id")
  int wishlistItemId;
  @JsonKey(name: "has_options")
  String hasOptions;
  @JsonKey(name: "options")
  List<dynamic> options;
  @JsonKey(name: "bundle_options")
  List<dynamic> bundleOptions;
  @JsonKey(name: "configurable_option")
  List<ConfigurableOption> configurableOption;
  @JsonKey(name: "remaining_qty")
  int remainingQty;
  @JsonKey(name: "images")
  List<String> images;
  @JsonKey(name: "upsell")
  List<dynamic> upsell;
  @JsonKey(name: "related")
  List<dynamic> related;
  @JsonKey(name: "review")
  Review review;

  ProductInfo({
    required this.id,
    required this.sku,
    required this.isReturn,
    required this.celebrityId,
    required this.name,
    required this.attributeSetId,
    required this.price,
    required this.finalPrice,
    required this.status,
    required this.type,
    required this.webUrl,
    required this.brandName,
    required this.brand,
    required this.isFollowingBrand,
    required this.brandBannerUrl,
    required this.isSalable,
    required this.isNew,
    required this.isSale,
    required this.isTrending,
    required this.isBestSeller,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
    required this.weight,
    required this.description,
    required this.shortDescription,
    required this.howToUse,
    required this.manufacturer,
    required this.keyIngredients,
    required this.returnsAndExchanges,
    required this.shippingAndDelivery,
    required this.aboutTheBrand,
    required this.metaTitle,
    required this.metaKeyword,
    required this.metaDescription,
    required this.sizeChart,
    required this.wishlistItemId,
    required this.hasOptions,
    required this.options,
    required this.bundleOptions,
    required this.configurableOption,
    required this.remainingQty,
    required this.images,
    required this.upsell,
    required this.related,
    required this.review,
  });

  factory ProductInfo.fromJson(Map<String, dynamic> json) =>
      _$ProductInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductInfoToJson(this);
}

@JsonSerializable()
class ConfigurableOption {
  @JsonKey(name: "attribute_id")
  int attributeId;
  @JsonKey(name: "type")
  String type;
  @JsonKey(name: "attribute_code")
  String attributeCode;
  @JsonKey(name: "attributes")
  List<Attribute> attributes;

  ConfigurableOption({
    required this.attributeId,
    required this.type,
    required this.attributeCode,
    required this.attributes,
  });

  factory ConfigurableOption.fromJson(Map<String, dynamic> json) =>
      _$ConfigurableOptionFromJson(json);

  Map<String, dynamic> toJson() => _$ConfigurableOptionToJson(this);
}

@JsonSerializable()
class Attribute {
  @JsonKey(name: "value")
  String value;
  @JsonKey(name: "option_id")
  String optionId;
  @JsonKey(name: "attribute_image_url")
  String attributeImageUrl;
  @JsonKey(name: "price")
  String price;
  @JsonKey(name: "images")
  List<String> images;
  @JsonKey(name: "color_code")
  dynamic colorCode;
  @JsonKey(name: "swatch_url")
  String swatchUrl;

  Attribute({
    required this.value,
    required this.optionId,
    required this.attributeImageUrl,
    required this.price,
    required this.images,
    required this.colorCode,
    required this.swatchUrl,
  });

  factory Attribute.fromJson(Map<String, dynamic> json) =>
      _$AttributeFromJson(json);

  Map<String, dynamic> toJson() => _$AttributeToJson(this);
}

@JsonSerializable()
class Review {
  @JsonKey(name: "total_review")
  int totalReview;
  @JsonKey(name: "rating_count")
  int ratingCount;

  Review({required this.totalReview, required this.ratingCount});

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewToJson(this);
}
