import 'package:donutapp/tabs/donut_tabs.dart';
import 'package:donutapp/widgets/icon_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> myTabs = const [
      IconWidget(iconPath: 'assets/icons/donut.png', dish: 'Donut'),
      IconWidget(iconPath: 'assets/icons/burger.png', dish: 'Burger'),
      IconWidget(iconPath: 'assets/icons/smoothie.png', dish: 'Smoothie'),
      IconWidget(iconPath: 'assets/icons/pancakes.png', dish: 'PanCakes'),
      IconWidget(iconPath: 'assets/icons/pizza.png', dish: 'Pizza'),
    ];

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: const Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 25,
              ),
              child: Row(
                children: const [
                  Text(
                    'I want to ',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Eat',
                    style: TextStyle(
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w900,
                    ),
                  )
                ],
              ),
            ),
            TabBar(
              indicatorColor: Colors.transparent,
              tabs: myTabs,
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  DonutTabs(),
                  DonutTabs(),
                  DonutTabs(),
                  DonutTabs(),
                  DonutTabs(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
