part of 'books_list_view_cubit.dart';

@immutable
sealed class BooksListViewState {}

final class BooksListViewInitial extends BooksListViewState {}

final class BooksListViewLoadingState extends BooksListViewState {}

final class BooksListViewSuccessState extends BooksListViewState {
  final List<BookEntitiy> books;

  BooksListViewSuccessState({required this.books});
}

final class BooksListViewFailureState extends BooksListViewState {
  final String errMessage;

  BooksListViewFailureState({required this.errMessage});
}
