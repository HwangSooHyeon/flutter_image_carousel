import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      body: PageView(
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
