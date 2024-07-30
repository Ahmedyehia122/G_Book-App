import 'package:bookly_app/core/constants/fonts.dart';
import 'package:bookly_app/core/constants/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Books_details_view_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/button_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BookDetailsViewAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 90.w, vertical: 8.h),
          child: const CustomBookImage(),
        ),
        SizedBox(height: 15.h),
        Text(
          'The Jungle Book',
          style: AppStyles.textStyle30,
        ),
        Text(
          'Rudyadr Kipling',
          style: AppStyles.textStyle20.copyWith(
            fontFamily: AppFonts.playFairDisplay,
            color: Colors.white.withOpacity(.7),
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 10.h),
        const CustomBookRating(),
        SizedBox(height: 30.h),
        const ButtonAction(),
      ],
    );
  }
}
