import 'package:cat_facts_randomizer/facts_page/domain/network/facts/cat_fact.dart';
import 'package:cat_facts_randomizer/src/res/consts.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'facts_rest_client.g.dart';

@RestApi(baseUrl: ApiUrls.catFactsUrl)
abstract class FactsRestClient {
  factory FactsRestClient(Dio dio, {String baseUrl}) = _FactsRestClient;

  @GET("/fact")
  Future<CatFact> getFacts();
}
