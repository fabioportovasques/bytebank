// import 'package:http/http.dart';
// import 'package:http_interceptor/http_interceptor.dart';
//
// import 'interceptors/logging_interceptor.dart';
//
// final Client client =
//     InterceptedClient.build(interceptors: [LoggingInterceptor()]);
//
// //const String baseUrl = Uri.parse('http://192.168.0.105:8080/transactions');
// var baseUrl = Uri.parse('http://192.168.0.105:8080/transactions');
//
// // final Client client = InterceptedClient.build(
// //     interceptors: [LoggingInterceptor()],
// // );
// //
// // final   baseUrl = Uri.parse('http://192.168.0.105:8080/transactions');

import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

class LoggingInterceptor implements InterceptorContract {
    @override
    Future<RequestData> interceptRequest({RequestData data}) async {
        print('Request');
        print('url: ${data.requestUrl}');
        print('headers: ${data.headers}');
        print('body: ${data.body}');
        return data;
    }

    @override
    Future<ResponseData> interceptResponse({ResponseData data}) async {
        print('Response');
        print('status code: ${data.statusCode}');
        print('headers: ${data.headers}');
        print('body: ${data.body}');
        return data;
    }
}

void findAll() async {
    final Client client = HttpClientWithInterceptor.build(
        interceptors: [LoggingInterceptor()],
    );
    final Response response =
    await client.get('http://192.168.20.249:8080/transactions');
}