import 'package:invidious/videos/models/base_video.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../utils/models/image_object.dart';

part 'video_in_list.g.dart';

@JsonSerializable()
class VideoInList extends BaseVideo {
  int? viewCount;

  int? published;
  int? index;
  String? indexId;
  String? publishedText;

  VideoInList(String title, String videoId, int lengthSeconds, this.viewCount, String? author, String? authorId,
      String? authorUrl, this.published, this.publishedText, List<ImageObject> videoThumbnails)
      : super(title, videoId, lengthSeconds, author, authorUrl, authorId, videoThumbnails);

  factory VideoInList.fromJson(Map<String, dynamic> json) => _$VideoInListFromJson(json);

  Map<String, dynamic> toJson() => _$VideoInListToJson(this);
}
