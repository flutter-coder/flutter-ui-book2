class TextMenu {
  String? text;
  String? icon;
  String? path;

  TextMenu({this.text, this.icon, this.path});
}

// Menu Data
List<TextMenu> textMenuList = [
  TextMenu(text: "배송 안내", icon: "assets/icons/right-arrow.svg", path: "/"),
  TextMenu(text: "공지 사항", icon: "assets/icons/right-arrow.svg", path: "/"),
  TextMenu(text: "자주하는 질문", icon: "assets/icons/right-arrow.svg", path: "/"),
  TextMenu(text: "고객센터", icon: "assets/icons/right-arrow.svg", path: "/"),
  TextMenu(text: "이용안내", icon: "assets/icons/right-arrow.svg", path: "/"),
  TextMenu(text: "컬리 소개", icon: "assets/icons/right-arrow.svg", path: "/"),
];
