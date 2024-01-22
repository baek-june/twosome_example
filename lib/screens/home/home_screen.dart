import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. 메뉴 아이템 리스트 생성
    List<String> menuItems = [
      "New",
      "커피&음료",
      "아이스크림&빙수",
      "케이크",
    ];
    List<String> bannerItemImgUrl = [
      "assets/images/banner01.jpg",
      "assets/images/banner02.jpg",
    ];
    // 2. 탭바 컨트롤러 생성
    return DefaultTabController(
      length: menuItems.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("메뉴",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.home,
            color: Colors.grey,
          ),
          // 3. 탭바 생성(탭바 아래에 각각의 Tab을 생성)
          bottom: TabBar(
            tabAlignment: TabAlignment.center,
            // List.generator를 사용하여 menuItems 길이만큼 Tab을 생성합니다.
            tabs: List.generate(
              menuItems.length,
              (index) => Tab(
                text: menuItems[index],
              ),
            ),
            unselectedLabelColor: Colors.black38,
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true
            ,
          ),
        ),
        body: TabBarView(
          children: [
            // 'New' 탭 선택 시 보여지는 위젯입니다.
            Column(
              children: [
                CarouselSlider.builder(
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
                            margin: EdgeInsets.all(16.0),
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
                ),
              ],
            ),
            // '커피&음료' 탭 선택 시 보여지는 위젯입니다.
            const Center(
              child: Text("커피&음료 화면입니다."),
            ),
            // '아이스크림&빙수' 탭 선택 시 보여지는 위젯입니다.
            const Center(
              child: Text("아이스크림&빙수 화면입니다."),
            ),
            // '케이크' 탭 선택 시 보여지는 위젯입니다.
            const Center(
              child: Text("케이크 화면입니다."),
            ),
          ],
        ),
      ),
    );
  }
}
