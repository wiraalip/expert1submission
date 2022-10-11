// Mocks generated by Mockito 5.3.0 from annotations
// in ditonton/test/presentation/provider/tv_list_notifier_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i3;
import 'package:ditonton/common/failure.dart' as _i6;
import 'package:ditonton/domain/entities/tv.dart' as _i7;
import 'package:ditonton/domain/repositories/tv_repository.dart' as _i2;
import 'package:ditonton/domain/usecases/get_tv_now_playing_movies.dart' as _i4;
import 'package:ditonton/domain/usecases/get_tv_popular_movies.dart' as _i8;
import 'package:ditonton/domain/usecases/get_tv_top_rated_movies.dart' as _i9;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeSeriesRepository_0 extends _i1.SmartFake
    implements _i2.SeriesRepository {
  _FakeSeriesRepository_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [GetNowPlayingSeries].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetNowPlayingSeries extends _i1.Mock
    implements _i4.GetNowPlayingSeries {
  MockGetNowPlayingSeries() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.SeriesRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
              returnValue:
                  _FakeSeriesRepository_0(this, Invocation.getter(#repository)))
          as _i2.SeriesRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i7.TV>>> execute() =>
      (super.noSuchMethod(Invocation.method(#execute, []),
          returnValue: _i5.Future<_i3.Either<_i6.Failure, List<_i7.TV>>>.value(
              _FakeEither_1<_i6.Failure, List<_i7.TV>>(
                  this, Invocation.method(#execute, [])))) as _i5
          .Future<_i3.Either<_i6.Failure, List<_i7.TV>>>);
}

/// A class which mocks [GetPopularSeries].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetPopularSeries extends _i1.Mock implements _i8.GetPopularSeries {
  MockGetPopularSeries() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.SeriesRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
              returnValue:
                  _FakeSeriesRepository_0(this, Invocation.getter(#repository)))
          as _i2.SeriesRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i7.TV>>> execute() =>
      (super.noSuchMethod(Invocation.method(#execute, []),
          returnValue: _i5.Future<_i3.Either<_i6.Failure, List<_i7.TV>>>.value(
              _FakeEither_1<_i6.Failure, List<_i7.TV>>(
                  this, Invocation.method(#execute, [])))) as _i5
          .Future<_i3.Either<_i6.Failure, List<_i7.TV>>>);
}

/// A class which mocks [GetTopRatedSeries].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetTopRatedSeries extends _i1.Mock implements _i9.GetTopRatedSeries {
  MockGetTopRatedSeries() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.SeriesRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
              returnValue:
                  _FakeSeriesRepository_0(this, Invocation.getter(#repository)))
          as _i2.SeriesRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i7.TV>>> execute() =>
      (super.noSuchMethod(Invocation.method(#execute, []),
          returnValue: _i5.Future<_i3.Either<_i6.Failure, List<_i7.TV>>>.value(
              _FakeEither_1<_i6.Failure, List<_i7.TV>>(
                  this, Invocation.method(#execute, [])))) as _i5
          .Future<_i3.Either<_i6.Failure, List<_i7.TV>>>);
}
