class NeighborhoodLife {
  final String category;
  final String profileImgUri;
  final String userName;
  final String location;
  final String content;
  final String contentImgUri;
  final int commentCount;
  final int authCount;
  final String date;

  NeighborhoodLife({
    required this.category,
    required this.profileImgUri,
    required this.userName,
    required this.location,
    required this.content,
    required this.contentImgUri,
    required this.commentCount,
    required this.authCount,
    required this.date,
  });
}

// 샘플 데이터 1
String lifeTitle = '이웃과 함께 만드는 봄 간식 지도 마음까지 따듯해지는 봄 간식을 만나보세요.';

// 샘플 데이터 2
List<NeighborhoodLife> neighborhoodLifeList = [
  NeighborhoodLife(
    category: '우리동네질문',
    profileImgUri: 'https://picsum.photos/id/871/200/300?grayscale', // TODO 06 수정
    userName: '헬로비비',
    location: '좌동',
    content: '예민한 개도 미용할 수 있는 곳이나 동물 병원 어디 있을까요?\n'
        '내일 유기견을 데려오기로 했는데 아직 성향을 잘 몰라서 걱정이 돼요 ㅜㅜ.',
    contentImgUri: 'https://picsum.photos/id/872/200/300?grayscale',
    commentCount: 11,
    authCount: 3,
    date: '3시간전',
  ),
  NeighborhoodLife(
    category: '우리동네소식',
    profileImgUri: 'https://picsum.photos/id/873/200/100?grayscale',
    userName: '당근토끼',
    location: '우동',
    content: '이명 치료 잘 아시는 분 있나요?',
    contentImgUri: 'https://picsum.photos/id/874/200/100?grayscale',
    commentCount: 2,
    authCount: 1,
    date: '1일전',
  ),
  NeighborhoodLife(
    category: '분실',
    profileImgUri: 'https://picsum.photos/id/875/200/100?grayscale',
    userName: 'flutter',
    location: '중동',
    content: '롯데캐슬 방향으로 재래시장 앞쪽 지나 혹시 에어팟 오른쪽 주우신 분 있나요ㅜㅜ',
    contentImgUri: '',
    commentCount: 11,
    authCount: 8,
    date: '1일전',
  ),
  NeighborhoodLife(
    category: '우리동네질문',
    profileImgUri: 'https://picsum.photos/id/880/200/100',
    userName: '구름나드리',
    location: '우동',
    content: '밤부터 새벽까지 하던 토스트 아저씨 언제 다시 오나요ㅜㅠ',
    contentImgUri: '',
    commentCount: 0,
    authCount: 7,
    date: '3일전',
  ),
  NeighborhoodLife(
    category: '우리동네질문',
    profileImgUri: 'https://picsum.photos/id/730/200/100?grayscale',
    userName: '아는형',
    location: '만덕동',
    content: '아니 이 시간에 마이크 들고 노래하는 사람은 정상인가요?',
    contentImgUri: 'https://picsum.photos/id/885/200/100',
    commentCount: 11,
    authCount: 2,
    date: '5일전',
  ),
];
