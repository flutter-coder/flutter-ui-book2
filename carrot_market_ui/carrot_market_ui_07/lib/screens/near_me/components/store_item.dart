import 'package:flutter/material.dart';

import '../../../models/recommend_store.dart';
import '../../../theme.dart';

class StoreItem extends StatelessWidget {
  final RecommendStore recommendStore;

  const StoreItem({Key? key, required this.recommendStore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(width: 0.3, color: Colors.grey)),
      width: 289,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              buildClipRRect(topLeft: 10),
              const SizedBox(width: 2),
              buildClipRRect(topRight: 10),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: '${recommendStore.storeName} ', style: textTheme().displayLarge), // TODO 07 수정
                      TextSpan(text: '${recommendStore.location}'),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${recommendStore.description}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme().titleMedium, // TODO 07 수정
                ),
                const SizedBox(height: 8),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: '후기 ${recommendStore.commentCount}', style: TextStyle(fontSize: 15, color: Colors.blue)),
                      TextSpan(
                        text: ' • 관심 ${recommendStore.likeCount}',
                        style: textTheme().titleMedium, // TODO 07 수정
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: '${recommendStore.commentUser},', style: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold)),
                    TextSpan(text: '${recommendStore.comment}', style: TextStyle(fontSize: 12, color: Colors.black)),
                  ],
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
        ],
      ),
    );
  }

  ClipRRect buildClipRRect({double topLeft = 0, double topRight = 0}) {
    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(topLeft), topRight: Radius.circular(topRight)),
      child: Image.network(
        recommendStore.storeImages[0],
        width: 143,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}
