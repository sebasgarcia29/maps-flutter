import 'package:dio/dio.dart';

class TrafficInterceptor extends Interceptor {
  final accessToken =
      'pk.eyJ1Ijoic2ViYXNnYXJjaWEyOSIsImEiOiJjbGR4aTRheWowaGpoNDBqcXNmaG14bmxoIn0.6-W_lT29U9HogbRT3D0nNg';
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'alternatives': true,
      'geometries': 'polyline6',
      'overview': 'simplified',
      'steps': false,
      'access_token': accessToken
    });

    super.onRequest(options, handler);
  }
}
