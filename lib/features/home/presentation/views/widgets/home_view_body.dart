import 'package:bookly_app/core/constants/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_bloc_builder.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_books_list_view_bloc_builder.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_app_bar..dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeViewAppBar(),
              const CustomBooksListViewBlocBuilder(),
              Padding(
                padding: EdgeInsets.only(left: 20.w, bottom: 15.h),
                child: Text(
                  'Best seller',
                  style: AppStyles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        const BestSellerListViewBlocBuilder()
      ],
    );
  }
}
