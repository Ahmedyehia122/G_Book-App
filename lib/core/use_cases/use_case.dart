import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<T, Param> {
  Future<Either<Failure, T>> call(Param param);
}
