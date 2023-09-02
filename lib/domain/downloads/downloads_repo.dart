import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/core/Failure/main_failure.dart';
import 'package:netflix_app/domain/downloads/models/downloads.dart';

abstract class DownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages();
}