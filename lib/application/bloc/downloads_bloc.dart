import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/Failure/main_failure.dart';

import '../../domain/downloads/downloads_repo.dart';
import '../../domain/downloads/models/downloads.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';

part 'downloads_bloc.freezed.dart';


@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final DownloadsRepo downloadsRepo;
  DownloadsBloc(this.downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImages>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, downloadsSuccessFailureOption: none()));
      final Either<MainFailure, List<Downloads>> downloadsOption =
          await downloadsRepo.getDownloadsImages();
          print(downloadsOption.toString());
      emit(downloadsOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              downloadsSuccessFailureOption: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              downloads: success,
              downloadsSuccessFailureOption: Some(Right(success)))));
    });
  }
}
