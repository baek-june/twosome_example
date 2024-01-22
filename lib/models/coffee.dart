class Coffee {
  final String id; // 메뉴 id입니다.
  final String title; // 메뉴 명입니다.
  final String price; // 금액 정보입니다.
  final String imageUrl; // 메뉴의 기본 이미지입니다.
  final String imageUrl2; // 메뉴의 아이스 이미지입니다.

  Coffee({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.imageUrl2
  });
}

List<Coffee> coffees = [ // 데이터 목록을 만듭니다.
  Coffee(
    id: "01",
    title: "(1호점 신촌커피)",
    price: "6100",
    imageUrl: "assets/images/coffee01.jpg",
    imageUrl2: "assets/images/coffee01_ice.jpg",
  ),
  Coffee(
    id: "02",
    title: "아메리카노",
    price: "4500",
    imageUrl: "assets/images/coffee02.jpg",
    imageUrl2: "assets/images/coffee02_ice.jpg",
  ),
  Coffee(
    id: "03",
    title: "카페라떼",
    price: "5000",
    imageUrl: "assets/images/coffee03.jpg",
    imageUrl2: "assets/images/coffee03_ice.jpg",
  ),
  Coffee(
    id: "04",
    title: "바닐라카페라떼",
    price: "5500",
    imageUrl: "assets/images/coffee04.jpg",
    imageUrl2: "assets/images/coffee04_ice.jpg",
  ),
];