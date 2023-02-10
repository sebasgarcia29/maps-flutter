import 'package:dio/dio.dart';

class PlacesInterceptor extends Interceptor {
  final accessToken =
      'pk.eyJ1Ijoic2ViYXNnYXJjaWEyOSIsImEiOiJjbGR4aTRheWowaGpoNDBqcXNmaG14bmxoIn0.6-W_lT29U9HogbRT3D0nNg';
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'access_token': accessToken,
      'language': 'es',
      'limit': 7,
    });
    super.onRequest(options, handler);
  }
}
