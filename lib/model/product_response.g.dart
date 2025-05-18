// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetails _$ProductDetailsFromJson(Map<String, dynamic> json) =>
    ProductDetails(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: ProductInfo.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductDetailsToJson(ProductDetails instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

ProductInfo _$ProductInfoFromJson(Map<String, dynamic> json) => ProductInfo(
  id: json['id'] as String,
  sku: json['sku'] as String,
  isReturn: (json['is_return'] as num).toInt(),
  celebrityId: (json['celebrity_id'] as num).toInt(),
  name: json['name'] as String,
  attributeSetId: json['attribute_set_id'] as String,
  price: json['price'] as String,
  finalPrice: json['final_price'] as String,
  status: json['status'] as String,
  type: json['type'] as String,
  webUrl: json['web_url'] as String,
  brandName: json['brand_name'] as String,
  brand: json['brand'] as String,
  isFollowingBrand: (json['is_following_brand'] as num).toInt(),
  brandBannerUrl: json['brand_banner_url'] as String,
  isSalable: json['is_salable'] as bool,
  isNew: (json['is_new'] as num).toInt(),
  isSale: (json['is_sale'] as num).toInt(),
  isTrending: (json['is_trending'] as num).toInt(),
  isBestSeller: (json['is_best_seller'] as num).toInt(),
  image: json['image'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  weight: json['weight'],
  description: json['description'] as String,
  shortDescription: json['short_description'],
  howToUse: json['how_to_use'],
  manufacturer: json['manufacturer'],
  keyIngredients: json['key_ingredients'],
  returnsAndExchanges: json['returns_and_exchanges'],
  shippingAndDelivery: json['shipping_and_delivery'],
  aboutTheBrand: json['about_the_brand'],
  metaTitle: json['meta_title'] as String,
  metaKeyword: json['meta_keyword'],
  metaDescription: json['meta_description'] as String,
  sizeChart: json['size_chart'],
  wishlistItemId: (json['wishlist_item_id'] as num).toInt(),
  hasOptions: json['has_options'] as String,
  options: json['options'] as List<dynamic>,
  bundleOptions: json['bundle_options'] as List<dynamic>,
  configurableOption:
      (json['configurable_option'] as List<dynamic>)
          .map((e) => ConfigurableOption.fromJson(e as Map<String, dynamic>))
          .toList(),
  remainingQty: (json['remaining_qty'] as num).toInt(),
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  upsell: json['upsell'] as List<dynamic>,
  related: json['related'] as List<dynamic>,
  review: Review.fromJson(json['review'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProductInfoToJson(ProductInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sku': instance.sku,
      'is_return': instance.isReturn,
      'celebrity_id': instance.celebrityId,
      'name': instance.name,
      'attribute_set_id': instance.attributeSetId,
      'price': instance.price,
      'final_price': instance.finalPrice,
      'status': instance.status,
      'type': instance.type,
      'web_url': instance.webUrl,
      'brand_name': instance.brandName,
      'brand': instance.brand,
      'is_following_brand': instance.isFollowingBrand,
      'brand_banner_url': instance.brandBannerUrl,
      'is_salable': instance.isSalable,
      'is_new': instance.isNew,
      'is_sale': instance.isSale,
      'is_trending': instance.isTrending,
      'is_best_seller': instance.isBestSeller,
      'image': instance.image,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'weight': instance.weight,
      'description': instance.description,
      'short_description': instance.shortDescription,
      'how_to_use': instance.howToUse,
      'manufacturer': instance.manufacturer,
      'key_ingredients': instance.keyIngredients,
      'returns_and_exchanges': instance.returnsAndExchanges,
      'shipping_and_delivery': instance.shippingAndDelivery,
      'about_the_brand': instance.aboutTheBrand,
      'meta_title': instance.metaTitle,
      'meta_keyword': instance.metaKeyword,
      'meta_description': instance.metaDescription,
      'size_chart': instance.sizeChart,
      'wishlist_item_id': instance.wishlistItemId,
      'has_options': instance.hasOptions,
      'options': instance.options,
      'bundle_options': instance.bundleOptions,
      'configurable_option': instance.configurableOption,
      'remaining_qty': instance.remainingQty,
      'images': instance.images,
      'upsell': instance.upsell,
      'related': instance.related,
      'review': instance.review,
    };

ConfigurableOption _$ConfigurableOptionFromJson(Map<String, dynamic> json) =>
    ConfigurableOption(
      attributeId: (json['attribute_id'] as num).toInt(),
      type: json['type'] as String,
      attributeCode: json['attribute_code'] as String,
      attributes:
          (json['attributes'] as List<dynamic>)
              .map((e) => Attribute.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$ConfigurableOptionToJson(ConfigurableOption instance) =>
    <String, dynamic>{
      'attribute_id': instance.attributeId,
      'type': instance.type,
      'attribute_code': instance.attributeCode,
      'attributes': instance.attributes,
    };

Attribute _$AttributeFromJson(Map<String, dynamic> json) => Attribute(
  value: json['value'] as String,
  optionId: json['option_id'] as String,
  attributeImageUrl: json['attribute_image_url'] as String,
  price: json['price'] as String,
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  colorCode: json['color_code'],
  swatchUrl: json['swatch_url'] as String,
);

Map<String, dynamic> _$AttributeToJson(Attribute instance) => <String, dynamic>{
  'value': instance.value,
  'option_id': instance.optionId,
  'attribute_image_url': instance.attributeImageUrl,
  'price': instance.price,
  'images': instance.images,
  'color_code': instance.colorCode,
  'swatch_url': instance.swatchUrl,
};

Review _$ReviewFromJson(Map<String, dynamic> json) => Review(
  totalReview: (json['total_review'] as num).toInt(),
  ratingCount: (json['rating_count'] as num).toInt(),
);

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
  'total_review': instance.totalReview,
  'rating_count': instance.ratingCount,
};
