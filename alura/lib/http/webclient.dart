import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

import 'interceptors/logging_interceptor.dart';

final Client client =
    InterceptedClient.build(interceptors: [LoggingInterceptor()]);

//const String baseUrl = Uri.parse('http://192.168.0.105:8080/transactions');
var baseUrl = Uri.parse('http://192.168.0.105:8080/transactions');

// final Client client = InterceptedClient.build(
//     interceptors: [LoggingInterceptor()],
// );
//
// final   baseUrl = Uri.parse('http://192.168.0.105:8080/transactions');
