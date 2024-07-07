import 'package:flutter/material.dart';
import 'package:pinkpig/ui/pages/record_page/components/memo/memo_list.dart';
import 'package:pinkpig/ui/pages/record_page/components/memo/memo_write.dart';

class MemoDetail extends StatelessWidget {
  const MemoDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MemoList(),
        MemoWrite()
      ],
    );
  }
}
