import 'package:bookly_app/core/class/api_service.dart';
import 'package:bookly_app/core/constants/end_points.dart';
import 'package:bookly_app/core/constants/hive_boxes.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:hive/hive.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntitiy>> fetchBooksListView();
  Future<List<BookEntitiy>> fetchBestSellerBooksListView();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<BookEntitiy>> fetchBestSellerBooksListView() async {
    var respons = await apiService.get(url: EndPoints.fetchNewsetBooks);

    List<BookEntitiy> books = [];
    for (var book in respons['items']) {
      books.add(BookModel.fromJson(book));
    }

    // saveBooksLocally(books, HiveBoxes.bestSellerBooksListView);
    var box = Hive.box<BookEntitiy>(HiveBoxes.bestSellerBooksListView);
    box.addAll(books);

    return books;
  }

  @override
  Future<List<BookEntitiy>> fetchBooksListView() async {
    var respons = await apiService.get(url: EndPoints.fetchBooksEndPoint);
    List<BookEntitiy> books = [];

    for (var book in respons['items']) {
      books.add(BookModel.fromJson(book));
    }

    // saveBooksLocally(books, HiveBoxes.booksListView);
    var box = Hive.box<BookEntitiy>(HiveBoxes.booksListView);
    box.addAll(books);
    return books;
  }

  // void saveBooksLocally(List<BookEntitiy> books, String boxName) {
  //   var box = Hive.box<BookEntitiy>(boxName);
  //   box.addAll(books);
  // }
}
