import 'package:fbroadcast/fbroadcast.dart';
import 'package:flutter/material.dart';
import 'package:invidious/controllers/miniPayerController.dart';
import 'package:invidious/utils.dart';
import 'package:invidious/views/miniPlayer.dart';
import 'package:logging/logging.dart';

import 'globals.dart';

const RouteSettings ROUTE_SETTINGS = RouteSettings(name: 'settings');
const RouteSettings ROUTE_SETTINGS_MANAGE_SERVERS = RouteSettings(name: 'settings-manage-servers');
const RouteSettings ROUTE_SETTINGS_MANAGE_ONE_SERVER = RouteSettings(name: 'settings-manage-one-server');
const RouteSettings ROUTE_VIDEO = RouteSettings(name: 'video');
const RouteSettings ROUTE_CHANNEL = RouteSettings(name: 'channel');
const RouteSettings ROUTE_PLAYLIST_LIST = RouteSettings(name: 'playlist-list');
const RouteSettings ROUTE_PLAYLIST = RouteSettings(name: 'playlist');

class MyRouteObserver extends RouteObserver<PageRoute<dynamic>> {
  var log = Logger('MyRouteObserver');

  stopPlayingOnPop(PageRoute<dynamic>? newRoute, PageRoute<dynamic>? poppedRoute) {
    if (newRoute != null) {
      switch (newRoute.settings) {
        case ROUTE_SETTINGS:
        case ROUTE_PLAYLIST:
        case ROUTE_SETTINGS_MANAGE_SERVERS:
        case ROUTE_SETTINGS_MANAGE_ONE_SERVER:
        case ROUTE_VIDEO:
        case ROUTE_PLAYLIST_LIST:
        case ROUTE_CHANNEL:
          log.info('We should stop playing video');
          MiniPlayerController.to()?.showMiniPlayer();
          break;
        default:
          log.info('keep playing video');
          break;
      }
    }
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (route is PageRoute) {
      if(previousRoute is PageRoute){
        stopPlayingOnPop(route, previousRoute);
      }
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute is PageRoute) {
      // _sendScreenView(newRoute);
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute is PageRoute && route is PageRoute) {
      stopPlayingOnPop(route, previousRoute);
    }
  }
}
