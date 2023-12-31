import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/Failure/main_failure.dart';
import 'package:netflix_app/domain/core/api_end_points.dart';
import 'package:netflix_app/domain/downloads/downloads_repo.dart';
import 'package:netflix_app/domain/downloads/models/downloads.dart';


@LazySingleton(as: DownloadsRepo)
class DownloadsRepositary implements DownloadsRepo{
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages() async{
    try {
       final Response response = await Dio(BaseOptions()).get(ApiEndPoints.downloads);
       if(response.statusCode == 200 || response.statusCode == 201){

        final downloadsList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();
        return Right(downloadsList);
       }else {
        return const Left(MainFailure.serverFailure());
       }
    } catch (e) {
      print(e.toString());
       return const Left(MainFailure.clientFailure());
    }
  }

}