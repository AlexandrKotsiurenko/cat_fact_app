import 'package:cat_facts_randomizer/facts_page/domain/network/images/images_rest_client.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'facts/facts_rest_client.dart';

class RestClient {
  final logger = Logger();
  final dio = Dio(); // Provide a dio instance
  late final FactsRestClient factsRestClient;
  late final ImageRestClient imageRestClient;

  //create private constructor with singleton pattern
  RestClient._() {
    factsRestClient = FactsRestClient(dio);
    imageRestClient = ImageRestClient(dio);
  }

  static RestClient instance = RestClient._();
}
