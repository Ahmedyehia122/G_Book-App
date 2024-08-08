import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerBookItem extends StatelessWidget {
  const BestSellerBookItem({
    super.key,
    this.image,
  });
  final String? image;

  @override
  Widget build(BuildContext context) {
    // String testImage =
    //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtiJKuQkGMitVsqqDyAppVphB6JCTlpEl8_tytAzIVrG-z5NgLGQcQb8uCeQDF7ueRI0w&usqp=CAU';
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.r),
        child: CachedNetworkImage(
          imageUrl: image!,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
