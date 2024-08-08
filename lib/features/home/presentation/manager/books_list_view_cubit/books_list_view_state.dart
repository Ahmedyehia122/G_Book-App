part of 'books_list_view_cubit.dart';

@immutable
sealed class BooksListViewState {}

final class BooksListViewInitial extends BooksListViewState {}

final class BooksListViewLoading extends BooksListViewState {}

final class BooksListViewSuccess extends BooksListViewState {
  final List<BookEntitiy> books;

  BooksListViewSuccess({required this.books});
}

final class BooksListViewFailure extends BooksListViewState {
  final String errMessage;

  BooksListViewFailure({required this.errMessage});
}
