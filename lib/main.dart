import 'package:flutter/material.dart';
import 'package:hiring_task_ui/view/BottomNavigBar/bottom_navig_bar.dart';
import 'package:hiring_task_ui/view/Dashboard/home.dart';
import 'package:hiring_task_ui/view/Dashboard/need_help.dart';
import 'package:hiring_task_ui/view/Dashboard/quick_action.dart';
import 'package:hiring_task_ui/view/Dashboard/recent_discussion.dart';

void main() {
  runApp(const MyApp());
}

// this is main file
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BottomNavigBar(),
      //initialRoute: BottomNavigBar.id,
      routes: {
        Home.id: (context) => const Home(),
        QuickAction.id: (context) => const QuickAction(),
        RecentDiscussion.id: (context) => const RecentDiscussion(),
        NeedHelp.id: (context) => const NeedHelp(),
      },
    );
  }
}
