import 'package:ditonton/domain/entities/tv.dart';
import 'package:ditonton/domain/usecases/get_tv_now_playing_movies.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/usecases/get_tv_popular_movies.dart';
import 'package:ditonton/domain/usecases/get_tv_top_rated_movies.dart';
import 'package:flutter/material.dart';

class SeriesListNotifier extends ChangeNotifier {
  var _nowPlayingSeries = <TV>[];
  List<TV> get nowPlayingSeries => _nowPlayingSeries;

  RequestState _nowPlayingState = RequestState.Empty;
  RequestState get nowPlayingState => _nowPlayingState;

  var _popularSeries = <TV>[];
  List<TV> get popularSeries => _popularSeries;

  RequestState _popularSeriesState = RequestState.Empty;
  RequestState get popularSeriesState => _popularSeriesState;

  var _topRatedSeries = <TV>[];
  List<TV> get topRatedSeries => _topRatedSeries;

  RequestState _topRatedSeriesState = RequestState.Empty;
  RequestState get topRatedSeriesState => _topRatedSeriesState;

  String _message = '';
  String get message => _message;

  SeriesListNotifier({
    required this.getNowPlayingSeries,
    required this.getPopularSeries,
    required this.getTopRatedSeries,
  });

  final GetNowPlayingSeries getNowPlayingSeries;
  final GetPopularSeries getPopularSeries;
  final GetTopRatedSeries getTopRatedSeries;

  Future<void> fetchNowPlayingSeries() async {
    _nowPlayingState = RequestState.Loading;
    notifyListeners();

    final result = await getNowPlayingSeries.execute();
    result.fold(
      (failure) {
        _nowPlayingState = RequestState.Error;
        _message = failure.message;
        notifyListeners();
      },
      (SeriesData) {
        _nowPlayingState = RequestState.Loaded;
        _nowPlayingSeries = SeriesData;
        notifyListeners();
      },
    );
  }

  Future<void> fetchPopularSeries() async {
    _popularSeriesState = RequestState.Loading;
    notifyListeners();

    final result = await getPopularSeries.execute();
    result.fold(
      (failure) {
        _popularSeriesState = RequestState.Error;
        _message = failure.message;
        notifyListeners();
      },
      (SeriesData) {
        _popularSeriesState = RequestState.Loaded;
        _popularSeries = SeriesData;
        notifyListeners();
      },
    );
  }

  Future<void> fetchTopRatedSeries() async {
    _topRatedSeriesState = RequestState.Loading;
    notifyListeners();

    final result = await getTopRatedSeries.execute();
    result.fold(
      (failure) {
        _topRatedSeriesState = RequestState.Error;
        _message = failure.message;
        notifyListeners();
      },
      (SeriesData) {
        _topRatedSeriesState = RequestState.Loaded;
        _topRatedSeries = SeriesData;
        notifyListeners();
      },
    );
  }
}
