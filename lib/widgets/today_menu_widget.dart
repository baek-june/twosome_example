import 'package:flutter/material.dart';

class TodayMenuWidget extends StatelessWidget {
  const TodayMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> todayMenuImgUrl = [
      "assets/images/cake01.jpg",
      "assets/images/cake02.jpg",
      "assets/images/dessert01.jpg",
      "assets/images/dessert02.jpg",
      "assets/images/cake03.jpg",
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "카페뽀둥의 오늘 인기 메뉴",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          GridView.builder(
            itemCount: todayMenuImgUrl.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "${todayMenuImgUrl[index]}",
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
