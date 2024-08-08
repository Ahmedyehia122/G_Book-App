import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/best_seller_books_list_view/best_seller_books_list_view_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListViewBlocBuilder extends StatelessWidget {
  const BestSellerListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksListViewCubit,
        BestSellerBooksListViewState>(
      builder: (context, state) {
        if (state is BestSellerBooksListViewSuccessState) {
          return BestSellerListView(
            books: state.books,
          );
        } else if (state is BestSellerBooksListViewFailureState) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errorMessage: state.errMessage),
          );
        } else {
          return const SliverToBoxAdapter(
            child: CustomLoadingIndicator(),
          );
        }
      },
    );
  }
}
