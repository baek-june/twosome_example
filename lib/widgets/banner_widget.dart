import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    required this.bannerItemImgUrl,
  });

  final List<String> bannerItemImgUrl;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: bannerItemImgUrl.length, // bannerItemImgUrl의 길이만큼 생성합니다.
      itemBuilder: (context, itemIndex, realIndex) {
        return Stack(
          children: [
            Image.asset(
              "${bannerItemImgUrl[itemIndex]}",
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                color: Colors.black38,
                padding: const EdgeInsets.all(4.0),
                margin: const EdgeInsets.all(16.0),
                child: Text(
                  // 현재 (이미지 인덱스 + 1 / 배너 아이템 이미지 길이) 를 작성합니다.
                  (itemIndex + 1).toString() + " / " + bannerItemImgUrl.length.toString(),
                  style: const TextStyle(color: Colors.white,),
                ),
              ),
            ),
          ],
        );
      },
      options: CarouselOptions(
        viewportFraction: 1.0,
        autoPlay: true,
      ),
    );
  }
}