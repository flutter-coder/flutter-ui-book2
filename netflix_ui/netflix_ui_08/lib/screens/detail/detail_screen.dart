import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_ui/models/episode.dart';
import 'package:netflix_ui/screens/components/label_icon.dart';
import 'package:netflix_ui/screens/components/play_button.dart';
import 'package:netflix_ui/screens/components/small_sub_text.dart';
import 'package:video_player/video_player.dart';

import '../../constants.dart';
import 'components/episode_card.dart';

class DetailScreen extends StatefulWidget {
  static String routeName = "/detail";

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<String> posters = [
    "assets/images/big_buck_bunny_poster.jpg",
    "assets/images/les_miserables_poster.jpg",
    "assets/images/minari_poster.jpg",
    "assets/images/the_book_of_fish_poster.jpg",
  ];

  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  Future<void> initializePlayer() async {
    _videoPlayerController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
    await Future.wait([_videoPlayerController.initialize()]);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
    );
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Icon(FontAwesomeIcons.search),
          SizedBox(width: 25.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image(
                image: AssetImage("assets/images/dog.jpg"),
              ),
            ),
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 230.0,
            child: _chewieController != null &&
                    _chewieController!.videoPlayerController.value.isInitialized
                ? Chewie(controller: _chewieController!)
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircularProgressIndicator(),
                      SizedBox(height: 20),
                      Text('Loading'),
                    ],
                  ),
          ),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: NestedScrollView(
                headerSliverBuilder: (context, value) {
                  return [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              " 빅 벅 버니",
                              style: TextStyle(fontSize: 24.0),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Text(
                                  "95% 일치",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                SmallSubText(text: "2008"),
                                SizedBox(width: 10.0),
                                Container(
                                  decoration: BoxDecoration(color: kLightColor),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4.0, vertical: 2.0),
                                    child: Text(
                                      "15+",
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.white60),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                SmallSubText(text: "시즌 1개"),
                              ],
                            ),
                            SizedBox(height: 6.0),
                            Text(
                              "오늘 한국에서 콘텐츠 순위 1위",
                              style: TextStyle(fontSize: 16.0),
                            ),
                            SizedBox(height: 10.0),
                            PlayButton(width: double.infinity),
                            SizedBox(height: 10.0),
                            Container(
                              width: double.infinity,
                              height: 35.0,
                              decoration: BoxDecoration(
                                color: kButtonDarkColor,
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.download,
                                    size: 16.0,
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    "저장",
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(episodes[0].description),
                            SizedBox(height: 6.0),
                            RichText(
                              text: TextSpan(
                                  text: "출연: ",
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.grey[300]),
                                  children: [
                                    TextSpan(
                                        text: "버니, 프랭크, 링키, 기메라... ",
                                        style: TextStyle(color: Colors.grey)),
                                    TextSpan(text: "더보기"),
                                  ]),
                            ),
                            SizedBox(height: 20.0),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  LabelIcon(
                                    icon: FontAwesomeIcons.plus,
                                    label: "내가 찜한 콘텐츠",
                                  ),
                                  LabelIcon(
                                    icon: FontAwesomeIcons.thumbsUp,
                                    label: "평가",
                                  ),
                                  LabelIcon(
                                    icon: FontAwesomeIcons.shareAlt,
                                    label: "공유",
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.only(top: 20.0),
                      sliver: SliverToBoxAdapter(
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(color: kLightColor),
                            ),
                          ),
                          // 3
                          child: TabBar(
                            indicator: UnderlineTabIndicator(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 5.0),
                              insets: EdgeInsets.only(bottom: 45.0),
                            ),
                            isScrollable: true,
                            tabs: [
                              Tab(
                                text: "회차 정보",
                              ),
                              Tab(
                                text: "비슷한 콘텐츠",
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ];
                },
                body: Container(
                  // 4
                  child: TabBarView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                          right: 25.0,
                        ),
                        child: ListView(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text(
                                "시즌 1",
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Column(
                              children: List.generate(
                                episodes.length,
                                (index) => Padding(
                                  padding: const EdgeInsets.only(bottom: 30.0),
                                  child: EpisodeCard(
                                    episode: episodes[index],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ListView(
                          children: [
                            Wrap(
                              runSpacing: 8.0,
                              alignment: WrapAlignment.spaceBetween,
                              children: List.generate(
                                posters.length,
                                (index) => Image(
                                  image: AssetImage(posters[index]),
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
