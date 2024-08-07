import 'package:bookly_app/core/constants/hive_boxes.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntitiy> fetchBooksListView();
  List<BookEntitiy> fetchBestSellerBooksListView();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntitiy> fetchBestSellerBooksListView() {
    var box = Hive.box<BookEntitiy>(HiveBoxes.bestSellerBooksListView);
    return box.values.toList();
  }

  @override
  List<BookEntitiy> fetchBooksListView() {
    var box = Hive.box<BookEntitiy>(HiveBoxes.booksListView);
    return box.values.toList();
  }
}
