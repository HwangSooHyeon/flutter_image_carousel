import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();

    Timer.periodic(
      Duration(
        seconds: 3,
      ),
      (timer) {
        int? nextPage = pageController.page?.toInt();

        if (nextPage == null) return;
        nextPage++;
        if (nextPage > 5) nextPage = 0;
        print('page number: $nextPage');
        pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [1, 2, 3, 4, 5, 6]
            .map(
              (number) => Image.asset(
                'asset/img/IMG_000$number.JPG',
                fit: BoxFit.cover,
              ),
            )
            .toList(),
      ),
    );
  }
}
