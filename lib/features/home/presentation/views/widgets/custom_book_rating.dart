import 'package:bookly_app/core/constants/styles.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookRating extends StatelessWidget {
  const CustomBookRating({super.key, this.book});
  final BookEntitiy? book;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 14,
        ),
        SizedBox(width: 10.w),
        Text(
          '4.8',
          style: AppStyles.textStyle16,
        ),
        SizedBox(width: 5.w),
        Text(
          "(${book?.rating.toString()})",
          style: AppStyles.textStyle14,
        )
      ],
    );
  }
}
