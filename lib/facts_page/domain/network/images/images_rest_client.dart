import 'package:cat_facts_randomizer/facts_page/domain/network/images/cat_image.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'images_rest_client.g.dart';

@RestApi(baseUrl: "https://cataas.com")
abstract class ImageRestClient {
  factory ImageRestClient(Dio dio, {String baseUrl}) = _ImageRestClient;

  @GET("/cat")
  Future<CatImage> getImage(@Query("json") bool isJson);
}
