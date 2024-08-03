import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:hive/hive.dart';

void saveData(List<BookEntitiy> books, String boxName) {
  var box = Hive.box<BookEntitiy>(boxName);
  box.addAll(books);
}
