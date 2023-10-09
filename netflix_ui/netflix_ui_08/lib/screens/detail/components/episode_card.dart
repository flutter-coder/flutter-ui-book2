import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_ui/models/episode.dart';

class EpisodeCard extends StatelessWidget {
  const EpisodeCard({
    Key? key,
    required this.episode,
  }) : super(key: key);

  final Episode episode;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image(
                    image: AssetImage(episode.previewImageUrl),
                    width: 130.0,
                    height: 70.0,
                  ),
                ),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: episode.episode,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: ". "),
                            TextSpan(text: episode.title)
                          ]),
                    ),
                    Text(
                      episode.playTime,
                      style: TextStyle(
                        color: Color(0xFF6c6c6c),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 10.0),
            Text(episode.description),
          ],
        ),
        Positioned(
            right: 0.0, top: 20.0, child: Icon(FontAwesomeIcons.download))
      ],
    );
  }
}
