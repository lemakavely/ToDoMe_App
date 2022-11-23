import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled11/models/task_data.dart';
import 'package:untitled11/widgets/while_page.dart';

void main() => runApp(Todolist());
class Todolist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home:  WholePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}








