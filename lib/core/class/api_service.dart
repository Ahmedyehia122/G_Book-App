import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiService {
  final Dio _dio;

  ApiService({required Dio dio}) : _dio = dio;

  Future<dynamic> get({required String url, @required String? token}) async {
    Map<String, dynamic> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    Response response = await _dio.get(url,
        options: Options(
          headers: headers,
        ));
    return response.data;
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic data,
      @required String? token}) async {
    Map<String, dynamic>? headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    Response response = await _dio.post(
      url,
      options: Options(headers: headers),
      data: data,
    );
    return response.data;
  }

  Future<dynamic> put(
      {required String url,
      @required dynamic data,
      @required String? token}) async {
    Map<String, dynamic>? headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    print('url:$url ,data:$data ,token:$token');

    Response response = await _dio.post(
      url,
      options: Options(headers: headers),
      data: data,
    );
    print(response.data);
    return response.data;
  }
}
