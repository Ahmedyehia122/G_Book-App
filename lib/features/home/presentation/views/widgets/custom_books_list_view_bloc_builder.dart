import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/books_list_view_cubit/books_list_view_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBooksListViewBlocBuilder extends StatelessWidget {
  const CustomBooksListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksListViewCubit, BooksListViewState>(
      builder: (context, state) {
        if (state is BooksListViewSuccessState) {
          return CustomBooksListView(
            books: state.books,
          );
        } else if (state is BooksListViewFailureState) {
          return CustomErrorWidget(
            errorMessage: state.errMessage,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
