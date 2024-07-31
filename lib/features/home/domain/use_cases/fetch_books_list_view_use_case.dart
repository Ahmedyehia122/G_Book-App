import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/use_cases/no_param_use_case.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchBooksListViewUseCase extends NoParamUseCase<List<BookEntitiy>> {
  final HomeRepo homeRepo;

  FetchBooksListViewUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntitiy>>> call() async {
    return await homeRepo.fetchBooksListView();
  }
}
