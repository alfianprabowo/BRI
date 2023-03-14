import 'package:flutter_test_1/app/utils/constants/leagues_const.dart';

enum Flavor {
  DEVDEBUG,
  DEVRELEASE,
  PRODDEBUG,
  PRODRELEASE,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.DEVDEBUG:
        return 'Dev Debug Flavor';
      case Flavor.DEVRELEASE:
        return 'Dev Release Flavor';
      case Flavor.PRODDEBUG:
        return 'Prod Debug App';
      case Flavor.PRODRELEASE:
        return 'Prod Release App';
      default:
        return 'title';
    }
  }

  static String get leagueUrl {
    switch (appFlavor) {
      case Flavor.DEVDEBUG:
        return LeaguesConst.premier;
      case Flavor.DEVRELEASE:
        return LeaguesConst.laLiga;
      case Flavor.PRODDEBUG:
        return LeaguesConst.serieA;
      case Flavor.PRODRELEASE:
        return LeaguesConst.ligue1;
      default:
        throw Exception("Unknown flavor for LeagueUri");
    }
  }
}
