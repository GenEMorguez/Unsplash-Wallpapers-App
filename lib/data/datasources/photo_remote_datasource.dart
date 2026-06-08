// lib/data/datasources/photo_remote_datasource.dart

import 'package:dio/dio.dart';
import '../models/photo_model.dart';
import '../../core/constants/app_constants.dart';

abstract class PhotoRemoteDataSource {
  Future<List<PhotoModel>> getPhotos({required int page});
  Future<List<PhotoModel>> searchPhotos({
    required String query,
    required int page,
  });
  Future<PhotoModel> getPhotoDetail(String id);
}

class PhotoRemoteDataSourceImpl implements PhotoRemoteDataSource {
  final Dio _dio;
  const PhotoRemoteDataSourceImpl(this._dio);

  @override
  Future<List<PhotoModel>> getPhotos({required int page}) async {
    final response = await _dio.get(
      '/photos',
      queryParameters: {
        'page': page,
        'per_page': AppConstants.pageSize,
        'order_by': 'popular',
      },
    );
    final list = response.data as List<dynamic>;
    return list
        .map((json) => PhotoModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<PhotoModel>> searchPhotos({
    required String query,
    required int page,
  }) async {
    final response = await _dio.get(
      '/search/photos',
      queryParameters: {
        'query': query,
        'page': page,
        'per_page': AppConstants.pageSize,
      },
    );
    final data = response.data as Map<String, dynamic>;
    final results = data['results'] as List<dynamic>;
    return results
        .map((json) => PhotoModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<PhotoModel> getPhotoDetail(String id) async {
    final response = await _dio.get('/photos/$id');
    return PhotoModel.fromJson(response.data as Map<String, dynamic>);
  }
}
