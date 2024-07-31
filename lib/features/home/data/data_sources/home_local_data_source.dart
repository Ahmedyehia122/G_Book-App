import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';

abstract class HomeLocalDataSource {
  List<BookEntitiy> fetchBooksListView();
  List<BookEntitiy> fetchBestSellerBooksListView();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntitiy> fetchBestSellerBooksListView() {
    // TODO: implement fetchBestSellerBooksListView
    throw UnimplementedError();
  }

  @override
  List<BookEntitiy> fetchBooksListView() {
    // TODO: implement fetchBooksListView
    throw UnimplementedError();
  }
}
