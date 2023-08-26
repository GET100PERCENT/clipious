// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'downloads/models/downloaded_video.dart';
import 'home/models/db/home_layout.dart';
import 'search/models/db/searchHistoryItem.dart';
import 'settings/models/db/app_logs.dart';
import 'settings/models/db/server.dart';
import 'settings/models/db/settings.dart';
import 'settings/models/db/video_filter.dart';
import 'videos/models/db/history_video_cache.dart';
import 'videos/models/db/progress.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 8038281984607819042),
      name: 'Server',
      lastPropertyId: const IdUid(7, 7993511472188126727),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2410037502505490239),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 8956955780928852647),
            name: 'url',
            type: 9,
            flags: 34848,
            indexId: const IdUid(1, 2407620149040502806)),
        ModelProperty(
            id: const IdUid(3, 2983333445278944481),
            name: 'authToken',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 2632576147281157993),
            name: 'inUse',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 7993511472188126727),
            name: 'sidCookie',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 2463187106197509769),
      name: 'SettingsValue',
      lastPropertyId: const IdUid(3, 4665740245375834282),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3567602159840796895),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 525293931186831855),
            name: 'name',
            type: 9,
            flags: 34848,
            indexId: const IdUid(2, 1004000799244198133)),
        ModelProperty(
            id: const IdUid(3, 4665740245375834282),
            name: 'value',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(3, 8787382286414233697),
      name: 'Progress',
      lastPropertyId: const IdUid(3, 8602536477328513343),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5651818511313053101),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4301486387527660152),
            name: 'progress',
            type: 8,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 8602536477328513343),
            name: 'videoId',
            type: 9,
            flags: 34848,
            indexId: const IdUid(3, 4343529106190079511))
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(4, 6956330633348216454),
      name: 'SearchHistoryItem',
      lastPropertyId: const IdUid(3, 4799661758354837094),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5055652677379509965),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 1184322842379216559),
            name: 'search',
            type: 9,
            flags: 34848,
            indexId: const IdUid(5, 7262786699272501249)),
        ModelProperty(
            id: const IdUid(3, 4799661758354837094),
            name: 'time',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(5, 8446250266008376981),
      name: 'AppLog',
      lastPropertyId: const IdUid(6, 5023716219165786985),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3160197863614923332),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 3008237629246315185),
            name: 'level',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 2647517759142178088),
            name: 'time',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 7759611646931835814),
            name: 'message',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1230803493579490035),
            name: 'stacktrace',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 5023716219165786985),
            name: 'logger',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(6, 8304874620604193998),
      name: 'VideoFilter',
      lastPropertyId: const IdUid(8, 6020474727686624632),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 4718003498405944371),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 906689741192359458),
            name: 'channelId',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 19321448094437321),
            name: 'value',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 7050038042672519102),
            name: 'dbType',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 2812361632619055204),
            name: 'dbOperation',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 4560530621575797576),
            name: 'filterAll',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 6020474727686624632),
            name: 'hideFromFeed',
            type: 1,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(7, 7737259498144569754),
      name: 'DownloadedVideo',
      lastPropertyId: const IdUid(12, 5585556588689024155),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 4941717954477256691),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(3, 2383320059961158921),
            name: 'title',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 8378509179540529921),
            name: 'author',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1179720564271059922),
            name: 'authorUrl',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 107924486215845740),
            name: 'downloadComplete',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 4130320220878296738),
            name: 'downloadFailed',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 6560523765053270041),
            name: 'audioOnly',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 7860866333154890990),
            name: 'quality',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 4090966965717168930),
            name: 'lengthSeconds',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 5585556588689024155),
            name: 'videoId',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(9, 4192516430920036128),
      name: 'HistoryVideoCache',
      lastPropertyId: const IdUid(6, 3954053412124926577),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2955960989783551283),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4777842522603948496),
            name: 'title',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 4486601293052981453),
            name: 'author',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 5980827452700393174),
            name: 'videoId',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 5075309708561338655),
            name: 'created',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 3954053412124926577),
            name: 'thumbnail',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(10, 6821162325360407377),
      name: 'HomeLayout',
      lastPropertyId: const IdUid(4, 8172441605240321034),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2141116138730176870),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4699190633584236247),
            name: 'showBigSource',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 2336366876714802775),
            name: 'dbBigSource',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 8172441605240321034),
            name: 'dbSmallSources',
            type: 30,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Shortcut for [Store.new] that passes [getObjectBoxModel] and for Flutter
/// apps by default a [directory] using `defaultStoreDirectory()` from the
/// ObjectBox Flutter library.
///
/// Note: for desktop apps it is recommended to specify a unique [directory].
///
/// See [Store.new] for an explanation of all parameters.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// Returns the ObjectBox model definition for this project for use with
/// [Store.new].
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(10, 6821162325360407377),
      lastIndexId: const IdUid(5, 7262786699272501249),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [6897417709810972885],
      retiredIndexUids: const [9110274326691932798],
      retiredPropertyUids: const [
        3422621380867834787,
        971220157301355316,
        7030952573865954657,
        6600296338817128660,
        345286493546760360,
        3278768646220204892
      ],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    Server: EntityDefinition<Server>(
        model: _entities[0],
        toOneRelations: (Server object) => [],
        toManyRelations: (Server object) => {},
        getId: (Server object) => object.id,
        setId: (Server object, int id) {
          object.id = id;
        },
        objectToFB: (Server object, fb.Builder fbb) {
          final urlOffset = fbb.writeString(object.url);
          final authTokenOffset = object.authToken == null
              ? null
              : fbb.writeString(object.authToken!);
          final sidCookieOffset = object.sidCookie == null
              ? null
              : fbb.writeString(object.sidCookie!);
          fbb.startTable(8);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, urlOffset);
          fbb.addOffset(2, authTokenOffset);
          fbb.addBool(5, object.inUse);
          fbb.addOffset(6, sidCookieOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final urlParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final authTokenParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 8);
          final sidCookieParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 16);
          final inUseParam =
              const fb.BoolReader().vTableGet(buffer, rootOffset, 14, false);
          final object = Server(
              url: urlParam,
              authToken: authTokenParam,
              sidCookie: sidCookieParam,
              inUse: inUseParam)
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);

          return object;
        }),
    SettingsValue: EntityDefinition<SettingsValue>(
        model: _entities[1],
        toOneRelations: (SettingsValue object) => [],
        toManyRelations: (SettingsValue object) => {},
        getId: (SettingsValue object) => object.id,
        setId: (SettingsValue object, int id) {
          object.id = id;
        },
        objectToFB: (SettingsValue object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          final valueOffset = fbb.writeString(object.value);
          fbb.startTable(4);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addOffset(2, valueOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final nameParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final valueParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 8, '');
          final object = SettingsValue(nameParam, valueParam)
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);

          return object;
        }),
    Progress: EntityDefinition<Progress>(
        model: _entities[2],
        toOneRelations: (Progress object) => [],
        toManyRelations: (Progress object) => {},
        getId: (Progress object) => object.id,
        setId: (Progress object, int id) {
          object.id = id;
        },
        objectToFB: (Progress object, fb.Builder fbb) {
          final videoIdOffset = fbb.writeString(object.videoId);
          fbb.startTable(4);
          fbb.addInt64(0, object.id);
          fbb.addFloat64(1, object.progress);
          fbb.addOffset(2, videoIdOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final progressParam =
              const fb.Float64Reader().vTableGet(buffer, rootOffset, 6, 0);
          final videoIdParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 8, '');
          final object = Progress(idParam, progressParam, videoIdParam);

          return object;
        }),
    SearchHistoryItem: EntityDefinition<SearchHistoryItem>(
        model: _entities[3],
        toOneRelations: (SearchHistoryItem object) => [],
        toManyRelations: (SearchHistoryItem object) => {},
        getId: (SearchHistoryItem object) => object.id,
        setId: (SearchHistoryItem object, int id) {
          object.id = id;
        },
        objectToFB: (SearchHistoryItem object, fb.Builder fbb) {
          final searchOffset = fbb.writeString(object.search);
          fbb.startTable(4);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, searchOffset);
          fbb.addInt64(2, object.time);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final searchParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final timeParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0);
          final object = SearchHistoryItem(searchParam, timeParam)
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);

          return object;
        }),
    AppLog: EntityDefinition<AppLog>(
        model: _entities[4],
        toOneRelations: (AppLog object) => [],
        toManyRelations: (AppLog object) => {},
        getId: (AppLog object) => object.id,
        setId: (AppLog object, int id) {
          object.id = id;
        },
        objectToFB: (AppLog object, fb.Builder fbb) {
          final levelOffset = fbb.writeString(object.level);
          final messageOffset =
              object.message == null ? null : fbb.writeString(object.message!);
          final stacktraceOffset = object.stacktrace == null
              ? null
              : fbb.writeString(object.stacktrace!);
          final loggerOffset = fbb.writeString(object.logger);
          fbb.startTable(7);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, levelOffset);
          fbb.addInt64(2, object.time.millisecondsSinceEpoch);
          fbb.addOffset(3, messageOffset);
          fbb.addOffset(4, stacktraceOffset);
          fbb.addOffset(5, loggerOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final levelParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final loggerParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 14, '');
          final timeParam = DateTime.fromMillisecondsSinceEpoch(
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0));
          final messageParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 10);
          final stacktraceParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 12);
          final object = AppLog(
              level: levelParam,
              logger: loggerParam,
              time: timeParam,
              message: messageParam,
              stacktrace: stacktraceParam)
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);

          return object;
        }),
    VideoFilter: EntityDefinition<VideoFilter>(
        model: _entities[5],
        toOneRelations: (VideoFilter object) => [],
        toManyRelations: (VideoFilter object) => {},
        getId: (VideoFilter object) => object.id,
        setId: (VideoFilter object, int id) {
          object.id = id;
        },
        objectToFB: (VideoFilter object, fb.Builder fbb) {
          final channelIdOffset = object.channelId == null
              ? null
              : fbb.writeString(object.channelId!);
          final valueOffset =
              object.value == null ? null : fbb.writeString(object.value!);
          final dbTypeOffset =
              object.dbType == null ? null : fbb.writeString(object.dbType!);
          final dbOperationOffset = object.dbOperation == null
              ? null
              : fbb.writeString(object.dbOperation!);
          fbb.startTable(9);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, channelIdOffset);
          fbb.addOffset(2, valueOffset);
          fbb.addOffset(3, dbTypeOffset);
          fbb.addOffset(4, dbOperationOffset);
          fbb.addBool(6, object.filterAll);
          fbb.addBool(7, object.hideFromFeed);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final valueParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 8);
          final channelIdParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 6);
          final object = VideoFilter(
              value: valueParam, channelId: channelIdParam)
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0)
            ..dbType = const fb.StringReader(asciiOptimization: true)
                .vTableGetNullable(buffer, rootOffset, 10)
            ..dbOperation = const fb.StringReader(asciiOptimization: true)
                .vTableGetNullable(buffer, rootOffset, 12)
            ..filterAll =
                const fb.BoolReader().vTableGet(buffer, rootOffset, 16, false)
            ..hideFromFeed =
                const fb.BoolReader().vTableGet(buffer, rootOffset, 18, false);

          return object;
        }),
    DownloadedVideo: EntityDefinition<DownloadedVideo>(
        model: _entities[6],
        toOneRelations: (DownloadedVideo object) => [],
        toManyRelations: (DownloadedVideo object) => {},
        getId: (DownloadedVideo object) => object.id,
        setId: (DownloadedVideo object, int id) {
          object.id = id;
        },
        objectToFB: (DownloadedVideo object, fb.Builder fbb) {
          final titleOffset = fbb.writeString(object.title);
          final authorOffset =
              object.author == null ? null : fbb.writeString(object.author!);
          final authorUrlOffset = object.authorUrl == null
              ? null
              : fbb.writeString(object.authorUrl!);
          final qualityOffset = fbb.writeString(object.quality);
          final videoIdOffset = fbb.writeString(object.videoId);
          fbb.startTable(13);
          fbb.addInt64(0, object.id);
          fbb.addOffset(2, titleOffset);
          fbb.addOffset(3, authorOffset);
          fbb.addOffset(4, authorUrlOffset);
          fbb.addBool(5, object.downloadComplete);
          fbb.addBool(6, object.downloadFailed);
          fbb.addBool(7, object.audioOnly);
          fbb.addOffset(9, qualityOffset);
          fbb.addInt64(10, object.lengthSeconds);
          fbb.addOffset(11, videoIdOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final videoIdParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 26, '');
          final titleParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 8, '');
          final authorParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 10);
          final authorUrlParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 12);
          final downloadCompleteParam =
              const fb.BoolReader().vTableGet(buffer, rootOffset, 14, false);
          final downloadFailedParam =
              const fb.BoolReader().vTableGet(buffer, rootOffset, 16, false);
          final audioOnlyParam =
              const fb.BoolReader().vTableGet(buffer, rootOffset, 18, false);
          final lengthSecondsParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 24, 0);
          final qualityParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 22, '');
          final object = DownloadedVideo(
              id: idParam,
              videoId: videoIdParam,
              title: titleParam,
              author: authorParam,
              authorUrl: authorUrlParam,
              downloadComplete: downloadCompleteParam,
              downloadFailed: downloadFailedParam,
              audioOnly: audioOnlyParam,
              lengthSeconds: lengthSecondsParam,
              quality: qualityParam);

          return object;
        }),
    HistoryVideoCache: EntityDefinition<HistoryVideoCache>(
        model: _entities[7],
        toOneRelations: (HistoryVideoCache object) => [],
        toManyRelations: (HistoryVideoCache object) => {},
        getId: (HistoryVideoCache object) => object.id,
        setId: (HistoryVideoCache object, int id) {
          object.id = id;
        },
        objectToFB: (HistoryVideoCache object, fb.Builder fbb) {
          final titleOffset = fbb.writeString(object.title);
          final authorOffset =
              object.author == null ? null : fbb.writeString(object.author!);
          final videoIdOffset = fbb.writeString(object.videoId);
          final thumbnailOffset = fbb.writeString(object.thumbnail);
          fbb.startTable(7);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, titleOffset);
          fbb.addOffset(2, authorOffset);
          fbb.addOffset(3, videoIdOffset);
          fbb.addInt64(4, object.created.millisecondsSinceEpoch);
          fbb.addOffset(5, thumbnailOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final videoIdParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 10, '');
          final titleParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final authorParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 8);
          final thumbnailParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 14, '');
          final object = HistoryVideoCache(
              videoIdParam, titleParam, authorParam, thumbnailParam)
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0)
            ..created = DateTime.fromMillisecondsSinceEpoch(
                const fb.Int64Reader().vTableGet(buffer, rootOffset, 12, 0));

          return object;
        }),
    HomeLayout: EntityDefinition<HomeLayout>(
        model: _entities[8],
        toOneRelations: (HomeLayout object) => [],
        toManyRelations: (HomeLayout object) => {},
        getId: (HomeLayout object) => object.id,
        setId: (HomeLayout object, int id) {
          object.id = id;
        },
        objectToFB: (HomeLayout object, fb.Builder fbb) {
          final dbBigSourceOffset = fbb.writeString(object.dbBigSource);
          final dbSmallSourcesOffset = fbb.writeList(object.dbSmallSources
              .map(fbb.writeString)
              .toList(growable: false));
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addBool(1, object.showBigSource);
          fbb.addOffset(2, dbBigSourceOffset);
          fbb.addOffset(3, dbSmallSourcesOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = HomeLayout()
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0)
            ..showBigSource =
                const fb.BoolReader().vTableGet(buffer, rootOffset, 6, false)
            ..dbBigSource = const fb.StringReader(asciiOptimization: true)
                .vTableGet(buffer, rootOffset, 8, '')
            ..dbSmallSources = const fb.ListReader<String>(
                    fb.StringReader(asciiOptimization: true),
                    lazy: false)
                .vTableGet(buffer, rootOffset, 10, []);

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Server] entity fields to define ObjectBox queries.
class Server_ {
  /// see [Server.id]
  static final id = QueryIntegerProperty<Server>(_entities[0].properties[0]);

  /// see [Server.url]
  static final url = QueryStringProperty<Server>(_entities[0].properties[1]);

  /// see [Server.authToken]
  static final authToken =
      QueryStringProperty<Server>(_entities[0].properties[2]);

  /// see [Server.inUse]
  static final inUse = QueryBooleanProperty<Server>(_entities[0].properties[3]);

  /// see [Server.sidCookie]
  static final sidCookie =
      QueryStringProperty<Server>(_entities[0].properties[4]);
}

/// [SettingsValue] entity fields to define ObjectBox queries.
class SettingsValue_ {
  /// see [SettingsValue.id]
  static final id =
      QueryIntegerProperty<SettingsValue>(_entities[1].properties[0]);

  /// see [SettingsValue.name]
  static final name =
      QueryStringProperty<SettingsValue>(_entities[1].properties[1]);

  /// see [SettingsValue.value]
  static final value =
      QueryStringProperty<SettingsValue>(_entities[1].properties[2]);
}

/// [Progress] entity fields to define ObjectBox queries.
class Progress_ {
  /// see [Progress.id]
  static final id = QueryIntegerProperty<Progress>(_entities[2].properties[0]);

  /// see [Progress.progress]
  static final progress =
      QueryDoubleProperty<Progress>(_entities[2].properties[1]);

  /// see [Progress.videoId]
  static final videoId =
      QueryStringProperty<Progress>(_entities[2].properties[2]);
}

/// [SearchHistoryItem] entity fields to define ObjectBox queries.
class SearchHistoryItem_ {
  /// see [SearchHistoryItem.id]
  static final id =
      QueryIntegerProperty<SearchHistoryItem>(_entities[3].properties[0]);

  /// see [SearchHistoryItem.search]
  static final search =
      QueryStringProperty<SearchHistoryItem>(_entities[3].properties[1]);

  /// see [SearchHistoryItem.time]
  static final time =
      QueryIntegerProperty<SearchHistoryItem>(_entities[3].properties[2]);
}

/// [AppLog] entity fields to define ObjectBox queries.
class AppLog_ {
  /// see [AppLog.id]
  static final id = QueryIntegerProperty<AppLog>(_entities[4].properties[0]);

  /// see [AppLog.level]
  static final level = QueryStringProperty<AppLog>(_entities[4].properties[1]);

  /// see [AppLog.time]
  static final time = QueryIntegerProperty<AppLog>(_entities[4].properties[2]);

  /// see [AppLog.message]
  static final message =
      QueryStringProperty<AppLog>(_entities[4].properties[3]);

  /// see [AppLog.stacktrace]
  static final stacktrace =
      QueryStringProperty<AppLog>(_entities[4].properties[4]);

  /// see [AppLog.logger]
  static final logger = QueryStringProperty<AppLog>(_entities[4].properties[5]);
}

/// [VideoFilter] entity fields to define ObjectBox queries.
class VideoFilter_ {
  /// see [VideoFilter.id]
  static final id =
      QueryIntegerProperty<VideoFilter>(_entities[5].properties[0]);

  /// see [VideoFilter.channelId]
  static final channelId =
      QueryStringProperty<VideoFilter>(_entities[5].properties[1]);

  /// see [VideoFilter.value]
  static final value =
      QueryStringProperty<VideoFilter>(_entities[5].properties[2]);

  /// see [VideoFilter.dbType]
  static final dbType =
      QueryStringProperty<VideoFilter>(_entities[5].properties[3]);

  /// see [VideoFilter.dbOperation]
  static final dbOperation =
      QueryStringProperty<VideoFilter>(_entities[5].properties[4]);

  /// see [VideoFilter.filterAll]
  static final filterAll =
      QueryBooleanProperty<VideoFilter>(_entities[5].properties[5]);

  /// see [VideoFilter.hideFromFeed]
  static final hideFromFeed =
      QueryBooleanProperty<VideoFilter>(_entities[5].properties[6]);
}

/// [DownloadedVideo] entity fields to define ObjectBox queries.
class DownloadedVideo_ {
  /// see [DownloadedVideo.id]
  static final id =
      QueryIntegerProperty<DownloadedVideo>(_entities[6].properties[0]);

  /// see [DownloadedVideo.title]
  static final title =
      QueryStringProperty<DownloadedVideo>(_entities[6].properties[1]);

  /// see [DownloadedVideo.author]
  static final author =
      QueryStringProperty<DownloadedVideo>(_entities[6].properties[2]);

  /// see [DownloadedVideo.authorUrl]
  static final authorUrl =
      QueryStringProperty<DownloadedVideo>(_entities[6].properties[3]);

  /// see [DownloadedVideo.downloadComplete]
  static final downloadComplete =
      QueryBooleanProperty<DownloadedVideo>(_entities[6].properties[4]);

  /// see [DownloadedVideo.downloadFailed]
  static final downloadFailed =
      QueryBooleanProperty<DownloadedVideo>(_entities[6].properties[5]);

  /// see [DownloadedVideo.audioOnly]
  static final audioOnly =
      QueryBooleanProperty<DownloadedVideo>(_entities[6].properties[6]);

  /// see [DownloadedVideo.quality]
  static final quality =
      QueryStringProperty<DownloadedVideo>(_entities[6].properties[7]);

  /// see [DownloadedVideo.lengthSeconds]
  static final lengthSeconds =
      QueryIntegerProperty<DownloadedVideo>(_entities[6].properties[8]);

  /// see [DownloadedVideo.videoId]
  static final videoId =
      QueryStringProperty<DownloadedVideo>(_entities[6].properties[9]);
}

/// [HistoryVideoCache] entity fields to define ObjectBox queries.
class HistoryVideoCache_ {
  /// see [HistoryVideoCache.id]
  static final id =
      QueryIntegerProperty<HistoryVideoCache>(_entities[7].properties[0]);

  /// see [HistoryVideoCache.title]
  static final title =
      QueryStringProperty<HistoryVideoCache>(_entities[7].properties[1]);

  /// see [HistoryVideoCache.author]
  static final author =
      QueryStringProperty<HistoryVideoCache>(_entities[7].properties[2]);

  /// see [HistoryVideoCache.videoId]
  static final videoId =
      QueryStringProperty<HistoryVideoCache>(_entities[7].properties[3]);

  /// see [HistoryVideoCache.created]
  static final created =
      QueryIntegerProperty<HistoryVideoCache>(_entities[7].properties[4]);

  /// see [HistoryVideoCache.thumbnail]
  static final thumbnail =
      QueryStringProperty<HistoryVideoCache>(_entities[7].properties[5]);
}

/// [HomeLayout] entity fields to define ObjectBox queries.
class HomeLayout_ {
  /// see [HomeLayout.id]
  static final id =
      QueryIntegerProperty<HomeLayout>(_entities[8].properties[0]);

  /// see [HomeLayout.showBigSource]
  static final showBigSource =
      QueryBooleanProperty<HomeLayout>(_entities[8].properties[1]);

  /// see [HomeLayout.dbBigSource]
  static final dbBigSource =
      QueryStringProperty<HomeLayout>(_entities[8].properties[2]);

  /// see [HomeLayout.dbSmallSources]
  static final dbSmallSources =
      QueryStringVectorProperty<HomeLayout>(_entities[8].properties[3]);
}
