import 'package:flutter/material.dart';
import 'package:pinkpig_memo/components/moneyplan_bottom.dart';
import 'package:pinkpig_memo/components/moneyplan_detail.dart';
import 'package:pinkpig_memo/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pink_pig',
      theme: theme(),
      home: MoneyPlanPage(),
    );
  }
}

class MoneyPlanPage extends StatelessWidget {
  final List<Tab> mainTabs = <Tab>[
    Tab(text: '일일'),
    Tab(text: '달력'),
    Tab(text: '메모'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mainTabs.length,
      child: Scaffold(
        appBar: _buildMoneyPlanAppBar(),
        bottomNavigationBar: _buildMoneyPlanBottomBar(),
        body: TabBarView(
          children: mainTabs.map((Tab tab) {
            return Column(
              children: [
                MoneyplanDetail(),
                MoneyplanBottom(),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }

  BottomNavigationBar _buildMoneyPlanBottomBar() {

    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.schedule), label: '기록'),
        BottomNavigationBarItem(icon: Icon(Icons.add_chart), label: '통계'),
        BottomNavigationBarItem(icon: Icon(Icons.money), label: '결산')
      ],
    );
  }

  AppBar _buildMoneyPlanAppBar() {
    return AppBar(
      title: const Text('가계부'),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
        ),
        const SizedBox(width: 16),
      ],
      elevation: 0.0,
      bottom: TabBar(
        tabs: mainTabs,
      ),
    );
  }
}
