import 'package:bulldozer/app/constants/strings/string.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:get_storage/get_storage.dart';



class ApiRequest {
  final String url;
  Map<String, String>? queryParameters;
  var data;
  final box = GetStorage();

  ApiRequest({
    required this.url,
    this.queryParameters,
    this.data,
  });

  Dio _dio() {
    var dio = Dio(BaseOptions(
      baseUrl: "${Constants.apiAddress}/api/",
      connectTimeout: 5000000,
      receiveTimeout: 5000000,
    )
    );
    dio.interceptors.add(DioCacheManager(CacheConfig()).interceptor);
    var token = box.read('token');
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (request, handler) {
          if (token != null && token != '') {
            request.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(request);
        },
      ),
    );
    return dio;
  }

  get() async {
    try {
      var res = (await _dio().get(url, queryParameters: queryParameters));

      if (res.statusCode == 200) {
        return res.data;
      } else {
        return null;
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        print(_dio().options.baseUrl);
        print('catched');
        return null;
      }
      if (e.type == DioErrorType.connectTimeout) {
        print('check your connection');
        return null;
      }

      if (e.type == DioErrorType.receiveTimeout) {
        print('unable to connect to the server');
        return null;
      }

      if (e.type == DioErrorType.other) {
        print('Something went wrong');
        return null;
      }
      print(e);
    } on Exception catch (e) {}
  }

  Future post({
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
  }) async {
    _dio().post(url, data: data).then((res) {

      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }

  Future put({
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
  }) async {
    _dio().put(url, data: data).then((res) {
      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }

  Future delete({
    Function()? beforeSend,
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
  }) async {
    _dio().delete(url).then((res) {
      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }
}
