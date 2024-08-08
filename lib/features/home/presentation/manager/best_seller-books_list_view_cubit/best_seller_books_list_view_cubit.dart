import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_best_seller_list_view_use_case.dart';
import 'package:meta/meta.dart';

part 'best_seller_books_list_view_state.dart';

class BestSellerBooksListViewCubit extends Cubit<BestSellerBooksListViewState> {
  BestSellerBooksListViewCubit(this.fetchBestSellerListViewUseCase)
      : super(BestSellerBooksListViewInitial());

  final FetchBestSellerListViewUseCase fetchBestSellerListViewUseCase;

  Future<void> fetchBestSellerBooks() async {
    emit(BestSellerBooksListViewLoadingState());
    var result = await fetchBestSellerListViewUseCase.call();
    result.fold(
      (failure) {
        emit(BestSellerBooksListViewFailureState(
            errMessage: failure.errMessage));
      },
      (books) {
        BestSellerBooksListViewSuccessState(books: books);
      },
    );
  }
}
