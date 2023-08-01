import 'package:flutter/material.dart';
import 'package:wordfind_app/start_page.dart';
import 'package:wordfind_app/task_page.dart';
import 'package:wordfind_app/welcome_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'Word Find Game',
    theme: ThemeData(fontFamily: 'Ribeye'),
    home: const TaskPage()
  ));
}




