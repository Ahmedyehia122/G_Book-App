import 'package:bookly_app/app.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  runApp(const BooklyApp());
}
