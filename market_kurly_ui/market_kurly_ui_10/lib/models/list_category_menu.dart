class ListCategoryMenu {
  String icon;
  String title;

  ListCategoryMenu({required this.icon, required this.title});
}

// 샘플 데이터
List listCategoryMenuList = [
  ListCategoryMenu(
    icon: "assets/icons/carrot.svg",
    title: "채소",
  ),
  ListCategoryMenu(
    icon: "assets/icons/apple.svg",
    title: "과일•견과•쌀",
  ),
  ListCategoryMenu(
    icon: "assets/icons/fish.svg",
    title: "수산•해산•건어물",
  ),
  ListCategoryMenu(
    icon: "assets/icons/egg.svg",
    title: "정육•계란",
  ),
  ListCategoryMenu(
    icon: "assets/icons/cook.svg",
    title: "국•반찬•메인요리",
  ),
  ListCategoryMenu(
    icon: "assets/icons/salad.svg",
    title: "쌜러드•간편식",
  ),
  ListCategoryMenu(
    icon: "assets/icons/noddles-in-box.svg",
    title: "면•양념•오일",
  ),
  ListCategoryMenu(
    icon: "assets/icons/glass-of-water.svg",
    title: "생수•음료",
  ),
  ListCategoryMenu(
    icon: "assets/icons/pizza.svg",
    title: "간식•과자•떡",
  )
];
