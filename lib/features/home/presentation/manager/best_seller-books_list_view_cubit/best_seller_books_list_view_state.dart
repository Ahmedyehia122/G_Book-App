part of 'best_seller_books_list_view_cubit.dart';

@immutable
sealed class BestSellerBooksListViewState {}

final class BestSellerBooksListViewInitial
    extends BestSellerBooksListViewState {}

final class BestSellerBooksListViewLoadingState
    extends BestSellerBooksListViewState {}

final class BestSellerBooksListViewSuccessState
    extends BestSellerBooksListViewState {
  final List<BookEntitiy> books;

  BestSellerBooksListViewSuccessState({required this.books});
}

final class BestSellerBooksListViewFailureState
    extends BestSellerBooksListViewState {
  final String errMessage;

  BestSellerBooksListViewFailureState({required this.errMessage});
}
