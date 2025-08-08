import 'package:flutter/material.dart';

class QuickAction extends StatefulWidget {
  static const String id = 'quick_action';
  const QuickAction({super.key});

  @override
  State<QuickAction> createState() => _QuickActionState();
}

class _QuickActionState extends State<QuickAction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quick Action',
        ),
      ),
    );
  }
}
