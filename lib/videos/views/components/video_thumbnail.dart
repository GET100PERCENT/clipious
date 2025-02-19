import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:invidious/globals.dart';

class VideoThumbnailView extends StatelessWidget {
  final String videoId;
  final String thumbnailUrl;
  final Widget? child;
  final String? cacheKey;
  final BoxDecoration? decoration;

  VideoThumbnailView(
      {super.key, required this.videoId, required this.thumbnailUrl, this.child, this.cacheKey, this.decoration});

  @override
  Widget build(BuildContext context) {
    ColorScheme colors = Theme.of(context).colorScheme;
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Thumbnail(
          id: cacheKey ?? 'v/$videoId',
          thumbnailUrl: thumbnailUrl,
          decoration: decoration != null
              ? decoration!
              : BoxDecoration(color: colors.secondaryContainer, borderRadius: BorderRadius.circular(10)),
          child: child),
    );
  }
}

class Thumbnail extends StatelessWidget {
  final String id;
  final Widget? child;
  double? height;
  double? width;

  final String thumbnailUrl;
  final BoxDecoration decoration;

  Thumbnail(
      {super.key,
      required this.id,
      this.child,
      required this.thumbnailUrl,
      required this.decoration,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    ColorScheme colors = Theme.of(context).colorScheme;

    return CachedNetworkImage(
      cacheKey: id,
      imageBuilder: (context, imageProvider) => AnimatedContainer(
        height: height,
        width: width,
        decoration: decoration.copyWith(image: DecorationImage(image: imageProvider, fit: BoxFit.cover)),
        // duration: animationDuration,
        duration: animationDuration ~/ 2,
        curve: Curves.easeInOutQuad,
        child: child,
      ),
      imageUrl: thumbnailUrl,
      placeholderFadeInDuration: animationDuration,
      fadeInDuration: animationDuration,
      fadeOutDuration: animationDuration,
      errorWidget: (context, url, error) => Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: decoration.copyWith(color: colors.secondaryContainer),
        // duration: animationDuration,
        child: SizedBox(
            height: 20,
            width: 20,
            child: Icon(
              Icons.error_outline,
              color: colors.onSecondaryContainer.withOpacity(0.5),
            )),
      ),
      progressIndicatorBuilder: (context, url, progress) => Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: decoration.copyWith(color: colors.secondaryContainer),
        // duration: animationDuration,
        child: const SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(
              strokeWidth: 1,
            )),
      ),
    );
  }
}
