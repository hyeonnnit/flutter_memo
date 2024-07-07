import 'package:flutter/material.dart';
import 'package:pinkpig/ui/pages/record_page/components/memo/memo_detail.dart';

class RecordMemoPage extends StatelessWidget {
  const RecordMemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MemoDetail(),
    );
  }
}
