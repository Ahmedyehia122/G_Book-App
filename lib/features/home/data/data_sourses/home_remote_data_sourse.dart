import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';

abstract class HomeRemoteDataSourse {
  List<BookEntitiy> fetchBooksListView();
  List<BookEntitiy> fetchBestSellerBooksListView();
}

class HomeRemoteDataSourseImp extends HomeRemoteDataSourse {
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
