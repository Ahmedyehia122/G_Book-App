import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_books_list_view_use_case.dart';
import 'package:meta/meta.dart';

part 'books_list_view_state.dart';

class BooksListViewCubit extends Cubit<BooksListViewState> {
  BooksListViewCubit(this.fetchBooksListViewUseCase)
      : super(BooksListViewInitial());
  final FetchBooksListViewUseCase fetchBooksListViewUseCase;

  Future<void> fetchBooksListView() async {
    emit(BooksListViewLoadingState());
    var result = await fetchBooksListViewUseCase.call();
    result.fold(
      (failure) {
        emit(BooksListViewFailureState(errMessage: failure.errMessage));
      },
      (books) {
        emit(BooksListViewSuccessState(books: books));
      },
    );
  }
}
