class Episode {
  final String episode;
  final String title;
  final String previewImageUrl;
  final String playTime;
  final String description;

  Episode({
    required this.episode,
    required this.title,
    required this.previewImageUrl,
    required this.playTime,
    required this.description,
  });
}

List<Episode> episodes = [
  Episode(
      episode: "1",
      title: "1화",
      previewImageUrl: "assets/images/episode_1.jpg",
      playTime: "1시간 10분",
      description: "버니가 좋아하는 나비들 중 2마리가 죽고 "
          "버니 자신에게 공격이 오자 버니는 온순한 자연을 뒤로 하고 "
          "2마리의 나비로 인해 복수할 계획들을 치밀히 세운다."),
  Episode(
      episode: "2",
      title: "2화",
      previewImageUrl: "assets/images/episode_2.jpg",
      playTime: "1시간 5분",
      description: "버니가 좋아하는 나비들 중 2마리가 죽고 "
          "버니 자신에게 공격이 오자 버니는 온순한 자연을 뒤로 하고 "
          "2마리의 나비로 인해 복수할 계획들을 치밀히 세운다."),
  Episode(
      episode: "3",
      title: "3화",
      previewImageUrl: "assets/images/episode_3.jpg",
      playTime: "1시간 12분",
      description: "버니가 좋아하는 나비들 중 2마리가 죽고 "
          "버니 자신에게 공격이 오자 버니는 온순한 자연을 뒤로 하고 "
          "2마리의 나비로 인해 복수할 계획들을 치밀히 세운다."),
];
