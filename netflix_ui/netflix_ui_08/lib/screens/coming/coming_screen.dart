import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_ui/models/episode.dart';
import 'package:netflix_ui/screens/components/label_icon.dart';
import 'package:video_player/video_player.dart';

import '../../constants.dart';

class ComingScreen extends StatefulWidget {
  @override
  _ComingScreenState createState() => _ComingScreenState();
}

class _ComingScreenState extends State<ComingScreen> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  // 1
  final List<String> genres = ["가슴 뭉클", "풍부한 감정", "권선징악", "영화"];

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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Text(
          "공개 예정",
          style: TextStyle(fontSize: 18.0),
        ),
        actions: [
          Icon(FontAwesomeIcons.chromecast),
          SizedBox(width: 25.0),
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
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            child: _chewieController != null &&
                    _chewieController!.videoPlayerController.value.isInitialized
                ? Chewie(
                    controller: _chewieController!,
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircularProgressIndicator(),
                      SizedBox(height: 20),
                      Text('Loading'),
                    ],
                  ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Big Buck Bunny",
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            LabelIcon(
                                icon: FontAwesomeIcons.solidBell,
                                label: "알림 받기"),
                            LabelIcon(icon: Icons.info_outline, label: "정보"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Text("4월 10일 공개"),
                SizedBox(height: 5.0),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    "빅 벅 버니",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(episodes[0].description),
                SizedBox(height: 5.0),
                Row(
                  children: List.generate(
                    genres.length,
                    (index) {
                      // 1
                      if (index == 0) {
                        return Text(genres[index],
                            style: TextStyle(
                                color: kTextLightColor, fontSize: 12.0));
                      } else {
                        return Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text("·"),
                            ),
                            Text(genres[index],
                                style: TextStyle(
                                    color: kTextLightColor, fontSize: 12.0))
                          ],
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
