import 'package:flutter/material.dart';
import 'package:pinkpig/ui/_common/calender_widget.dart';
import 'record_calender_page.dart';
import 'record_daily_page.dart';
import 'record_memo_page.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          CalendarWidget(),
          TabBar(
            tabs: const [
              Tab(text: "일일"),
              Tab(text: "달력"),
              Tab(text: "메모")
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                RecordDailyPage(),
                RecordCalenderPage(),
                RecordMemoPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
