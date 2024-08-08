import 'package:bookly_app/app.dart';
import 'package:bookly_app/core/utils/simble_bloc_observer.dart';
import 'package:bookly_app/core/constants/hive_boxes.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  Bloc.observer = SimbleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntitiyAdapter());
  await Hive.openBox<BookEntitiy>(HiveBoxes.booksListView);
  await Hive.openBox<BookEntitiy>(HiveBoxes.bestSellerBooksListView);

  runApp(const BooklyApp());
}
