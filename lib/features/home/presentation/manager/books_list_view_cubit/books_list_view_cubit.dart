import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:meta/meta.dart';

part 'books_list_view_state.dart';

class BooksListViewCubit extends Cubit<BooksListViewState> {
  BooksListViewCubit() : super(BooksListViewInitial());
}
