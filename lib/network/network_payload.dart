import './http_request_algorithm.dart';

abstract class NetworkPayload<T> {
  // Important, query parameters, path parameters and additionalHeaders
  // should always be Map<String, String>
  Map<String, String> get queryParameters;
  // use this var to set path parameters in Router path
  // e.g '/api/transactions/{filter}' then set pathParameters as
  // {'filter': 'PUBLIC}
  Map<String, String> get pathParameters;
  Map<String, String> get additionalHeaders;

  EHttpRequestAlgorithm get requestAlgorithm;

  Map<String, dynamic> request();
  T response(Map<String, dynamic> json);
}
