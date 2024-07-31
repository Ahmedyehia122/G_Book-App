import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntitiy>>> fetchBooksListView();
  Future<Either<Failure, List<BookEntitiy>>> fetchBestSellerBooksListView();
}
