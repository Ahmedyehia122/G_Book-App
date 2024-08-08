import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:meta/meta.dart';

part 'best_seller_books_list_view_state.dart';

class BestSellerBooksListViewCubit extends Cubit<BestSellerBooksListViewState> {
  BestSellerBooksListViewCubit() : super(BestSellerBooksListViewInitial());
}
