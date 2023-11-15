// ignore_for_file: prefer_const_constructors, unnecessary_import, unused_local_variable

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_flutter/main.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('user');
  runApp(const MainApp());
}
