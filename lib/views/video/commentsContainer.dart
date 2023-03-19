import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:invidious/controllers/commentsContainerController.dart';
import 'package:invidious/models/video.dart';

import 'comments.dart';

class CommentsContainer extends StatelessWidget {
  final Video video;

  const CommentsContainer({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    var locals = AppLocalizations.of(context)!;
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return GetBuilder<CommentsContainerController>(
      tag: 'comments-container-${video.videoId}',
      init: CommentsContainerController(),
      builder: (_) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  locals.comments,
                  style: TextStyle(color: colorScheme.secondary, fontSize: 20),
                ),
              ),
              DropdownButton<String>(
                value: _.sortBy,
                onChanged: _.changeSorting,
                items: [
                  DropdownMenuItem(
                    value: 'top',
                    child: Text(locals.topSorting),
                  ),
                  DropdownMenuItem(
                    value: 'new',
                    child: Text(locals.newSorting),
                  ),
                ],
              )
/*
                DropdownButton<String>(
                  value: source,
                  onChanged: (String? value) {
                    if (value != source) {
                      setState(() {
                        source = value ?? 'youtube';
                      });
                    }
                  },
                  items: const [
                    DropdownMenuItem(
                      value: 'youtube',
                      child: Text('Youtube'),
                    ),
                    DropdownMenuItem(
                      value: 'reddit',
                      child: Text('Reddit'),
                    ),
                  ],
                )
*/
            ],
          ),
          CommentsView(key: ValueKey<String>('comments-${_.sortBy}-${_.source}'),videoId: video.videoId, source: _.source, sortBy: _.sortBy),
        ],
      ),
    );
  }
}
