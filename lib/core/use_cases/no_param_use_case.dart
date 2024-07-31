import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class NoParamUseCase<T> {
  Future<Either<Failure, T>> call();
}
