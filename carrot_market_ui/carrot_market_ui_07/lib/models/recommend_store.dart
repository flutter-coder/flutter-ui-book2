class RecommendStore {
  String storeName;
  String location;
  String description;
  int commentCount;
  int likeCount;
  String comment;
  String commentUser;
  List storeImages;

  RecommendStore({
    required this.storeName,
    required this.location,
    required this.description,
    required this.commentCount,
    required this.likeCount,
    required this.comment,
    required this.commentUser,
    required this.storeImages,
  });
}

final List searchKeyword = ['인테리어', '학원', '이사', '카페', '용달', '네일', '에어콘'];

List<RecommendStore> recommendStoreList = [
  RecommendStore(
      storeName: '네일가게',
      location: '좌동',
      description: '꼼꼼한시술로 유지력높은 네일샵입니다. 좌동에 위치하고 있습니다.',
      commentCount: 1,
      likeCount: 8,
      commentUser: '이엘리아님',
      comment: '너무편하게 시술해주셔서 잠들었었네요 직모에 짧은 눈썹이라 펌이 잘 안되는 타입인데 너무 이쁘게 됐네요',
      storeImages: [
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_store_1_1.jpg?raw=true',
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_store_1_2.jpg?raw=true',
      ]),
  RecommendStore(
      storeName: '아미아미주먹밥',
      location: '우동',
      description: '2012년 오픈한 해운대도서관 분관쪽에 위치하고 있습니다.',
      commentCount: 2,
      likeCount: 2,
      commentUser: '둘리님',
      comment: '도서관이 근처라 시험기간마다 이용하는데 너무 좋습니다.',
      storeImages: [
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_store_2_1.jpg?raw=true',
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_store_2_2.jpg?raw=true',
      ]),
  RecommendStore(
      storeName: '영어원어민 논술',
      location: '중동',
      description: '원어민 영어 고급논술&디베이트&스피치 전문',
      commentCount: 7,
      likeCount: 1,
      commentUser: 'kkglo님',
      comment: '저희 아들은 학원 주입식이 아닌 살아있는 영어 수업을 할 수 있어서 너무 좋네요',
      storeImages: [
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_store_3_1.jpg?raw=true',
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_store_3_2.jpg?raw=true',
      ]),
  RecommendStore(
      storeName: '삘레빙/코인워시 우동점',
      location: '우동',
      description: '빨래방 / 크린토비아 코인워시 우동점 신설했습니다 많은 이용 바랍니다.',
      commentCount: 11,
      likeCount: 5,
      commentUser: '코인님',
      comment: '처음 방문때 건조기 무료로 서비스 해주셔서 너무 감사 하네요. 앞으로 자주 이용 합니다.',
      storeImages: [
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_store_4_1.jpg?raw=true',
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_store_4_2.jpg?raw=true',
      ])
];
