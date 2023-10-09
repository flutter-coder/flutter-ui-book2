class HomeBanner {
  final String bannerImage;
  final String eventTitle;
  final String eventContent;

  HomeBanner(
      {required this.eventTitle,
      required this.eventContent,
      required this.bannerImage});
}

// 샘플 데이터
List<HomeBanner> homeBannerList = [
  HomeBanner(
    bannerImage: "assets/images/kurly_banner_2.jpg",
    eventTitle: "회원가입하면",
    eventContent: "인기상품이\n100원부터 시작!",
  ),
  HomeBanner(
    bannerImage: "assets/images/kurly_banner_0.jpg",
    eventTitle: "장바구니 자랑하면",
    eventContent: "5천원의 행운이 매일!",
  ),
  HomeBanner(
    bannerImage: "assets/images/kurly_banner_1.jpg",
    eventTitle: "바쁜 햔대인들을 위한",
    eventContent: "모두의 아침 식사",
  ),
  HomeBanner(
    bannerImage: "assets/images/kurly_banner_3.jpg",
    eventTitle: "현대인의 건강을 위한",
    eventContent: "신선한 야채 식단!",
  ),
  HomeBanner(
    bannerImage: "assets/images/kurly_banner_4.jpg",
    eventTitle: "설렘 안고 떠나는",
    eventContent: "온라인 빵지순례",
  ),
  HomeBanner(
    bannerImage: "assets/images/kurly_banner_5.jpg",
    eventTitle: "든든한 한끼",
    eventContent: "맛있는 바베큐",
  ),
];
