import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://klinq.com/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("rest/V1/productdetails/{productId}/{variantId}")
  Future<String> getProductDetails(
      @Path("productId") String productId,
      @Path("variantId") String variantId,
      @Query("lang") String lang,
      @Query("store") String store,
      );
}
