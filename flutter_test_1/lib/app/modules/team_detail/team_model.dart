import 'package:equatable/equatable.dart';

class Team extends Equatable {
  final String? idTeam;
  final String? idSoccerXML;
  final String? idAPIfootball;
  final String? intLoved;
  final String? strTeam;
  final String? strTeamShort;
  final String? strAlternate;
  final String? intFormedYear;
  final String? strSport;
  final String? strLeague;
  final String? idLeague;
  final String? strLeague2;
  final String? idLeague2;
  final String? strLeague3;
  final String? idLeague3;
  final String? strLeague4;
  final dynamic idLeague4;
  final String? strLeague5;
  final dynamic idLeague5;
  final String? strLeague6;
  final dynamic idLeague6;
  final String? strLeague7;
  final dynamic idLeague7;
  final dynamic strDivision;
  final String? strManager;
  final String? strStadium;
  final String? strKeywords;
  final String? strRSS;
  final String? strStadiumThumb;
  final String? strStadiumDescription;
  final String? strStadiumLocation;
  final String? intStadiumCapacity;
  final String? strWebsite;
  final String? strFacebook;
  final String? strTwitter;
  final String? strInstagram;
  final String? strDescriptionEN;
  final String? strDescriptionDE;
  final String? strDescriptionFR;
  final dynamic strDescriptionCN;
  final String? strDescriptionIT;
  final String? strDescriptionJP;
  final String? strDescriptionRU;
  final String? strDescriptionES;
  final String? strDescriptionPT;
  final dynamic strDescriptionSE;
  final dynamic strDescriptionNL;
  final dynamic strDescriptionHU;
  final String? strDescriptionNO;
  final dynamic strDescriptionIL;
  final dynamic strDescriptionPL;
  final String? strKitColour1;
  final String? strKitColour2;
  final String? strKitColour3;
  final String? strGender;
  final String? strCountry;
  final String? strTeamBadge;
  final String? strTeamJersey;
  final String? strTeamLogo;
  final String? strTeamFanart1;
  final String? strTeamFanart2;
  final String? strTeamFanart3;
  final String? strTeamFanart4;
  final String? strTeamBanner;
  final String? strYoutube;
  final String? strLocked;

  const Team({
    this.idTeam,
    this.idSoccerXML,
    this.idAPIfootball,
    this.intLoved,
    this.strTeam,
    this.strTeamShort,
    this.strAlternate,
    this.intFormedYear,
    this.strSport,
    this.strLeague,
    this.idLeague,
    this.strLeague2,
    this.idLeague2,
    this.strLeague3,
    this.idLeague3,
    this.strLeague4,
    this.idLeague4,
    this.strLeague5,
    this.idLeague5,
    this.strLeague6,
    this.idLeague6,
    this.strLeague7,
    this.idLeague7,
    this.strDivision,
    this.strManager,
    this.strStadium,
    this.strKeywords,
    this.strRSS,
    this.strStadiumThumb,
    this.strStadiumDescription,
    this.strStadiumLocation,
    this.intStadiumCapacity,
    this.strWebsite,
    this.strFacebook,
    this.strTwitter,
    this.strInstagram,
    this.strDescriptionEN,
    this.strDescriptionDE,
    this.strDescriptionFR,
    this.strDescriptionCN,
    this.strDescriptionIT,
    this.strDescriptionJP,
    this.strDescriptionRU,
    this.strDescriptionES,
    this.strDescriptionPT,
    this.strDescriptionSE,
    this.strDescriptionNL,
    this.strDescriptionHU,
    this.strDescriptionNO,
    this.strDescriptionIL,
    this.strDescriptionPL,
    this.strKitColour1,
    this.strKitColour2,
    this.strKitColour3,
    this.strGender,
    this.strCountry,
    this.strTeamBadge,
    this.strTeamJersey,
    this.strTeamLogo,
    this.strTeamFanart1,
    this.strTeamFanart2,
    this.strTeamFanart3,
    this.strTeamFanart4,
    this.strTeamBanner,
    this.strYoutube,
    this.strLocked,
  });

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        idTeam: json['idTeam'],
        idSoccerXML: json['idSoccerXML'],
        idAPIfootball: json['idAPIfootball'],
        intLoved: json['intLoved'],
        strTeam: json['strTeam'],
        strTeamShort: json['strTeamShort'],
        strAlternate: json['strAlternate'],
        intFormedYear: json['intFormedYear'],
        strSport: json['strSport'],
        strLeague: json['strLeague'],
        idLeague: json['idLeague'],
        strLeague2: json['strLeague2'],
        idLeague2: json['idLeague2'],
        strLeague3: json['strLeague3'],
        idLeague3: json['idLeague3'],
        strLeague4: json['strLeague4'],
        idLeague4: json['idLeague4'],
        strLeague5: json['strLeague5'],
        idLeague5: json['idLeague5'],
        strLeague6: json['strLeague6'],
        idLeague6: json['idLeague6'],
        strLeague7: json['strLeague7'],
        idLeague7: json['idLeague7'],
        strDivision: json['strDivision'],
        strManager: json['strManager'],
        strStadium: json['strStadium'],
        strKeywords: json['strKeywords'],
        strRSS: json['strRSS'],
        strStadiumThumb: json['strStadiumThumb'],
        strStadiumDescription: json['strStadiumDescription'],
        strStadiumLocation: json['strStadiumLocation'],
        intStadiumCapacity: json['intStadiumCapacity'],
        strWebsite: json['strWebsite'],
        strFacebook: json['strFacebook'],
        strTwitter: json['strTwitter'],
        strInstagram: json['strInstagram'],
        strDescriptionEN: json['strDescriptionEN'],
        strDescriptionDE: json['strDescriptionDE'],
        strDescriptionFR: json['strDescriptionFR'],
        strDescriptionCN: json['strDescriptionCN'],
        strDescriptionIT: json['strDescriptionIT'],
        strDescriptionJP: json['strDescriptionJP'],
        strDescriptionRU: json['strDescriptionRU'],
        strDescriptionES: json['strDescriptionES'],
        strDescriptionPT: json['strDescriptionPT'],
        strDescriptionSE: json['strDescriptionSE'],
        strDescriptionNL: json['strDescriptionNL'],
        strDescriptionHU: json['strDescriptionHU'],
        strDescriptionNO: json['strDescriptionNO'],
        strDescriptionIL: json['strDescriptionIL'],
        strDescriptionPL: json['strDescriptionPL'],
        strKitColour1: json['strKitColour1'],
        strKitColour2: json['strKitColour2'],
        strKitColour3: json['strKitColour3'],
        strGender: json['strGender'],
        strCountry: json['strCountry'],
        strTeamBadge: json['strTeamBadge'],
        strTeamJersey: json['strTeamJersey'],
        strTeamLogo: json['strTeamLogo'],
        strTeamFanart1: json['strTeamFanart1'],
        strTeamFanart2: json['strTeamFanart2'],
        strTeamFanart3: json['strTeamFanart3'],
        strTeamFanart4: json['strTeamFanart4'],
        strTeamBanner: json['strTeamBanner'],
        strYoutube: json['strYoutube'],
        strLocked: json['strLocked'],
      );

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['idTeam'] = idTeam;
    data['idSoccerXML'] = idSoccerXML;
    data['idAPIfootball'] = idAPIfootball;
    data['intLoved'] = intLoved;
    data['strTeam'] = strTeam;
    data['strTeamShort'] = strTeamShort;
    data['strAlternate'] = strAlternate;
    data['intFormedYear'] = intFormedYear;
    data['strSport'] = strSport;
    data['strLeague'] = strLeague;
    data['idLeague'] = idLeague;
    data['strLeague2'] = strLeague2;
    data['idLeague2'] = idLeague2;
    data['strLeague3'] = strLeague3;
    data['idLeague3'] = idLeague3;
    data['strLeague4'] = strLeague4;
    data['idLeague4'] = idLeague4;
    data['strLeague5'] = strLeague5;
    data['idLeague5'] = idLeague5;
    data['strLeague6'] = strLeague6;
    data['idLeague6'] = idLeague6;
    data['strLeague7'] = strLeague7;
    data['idLeague7'] = idLeague7;
    data['strDivision'] = strDivision;
    data['strManager'] = strManager;
    data['strStadium'] = strStadium;
    data['strKeywords'] = strKeywords;
    data['strRSS'] = strRSS;
    data['strStadiumThumb'] = strStadiumThumb;
    data['strStadiumDescription'] = strStadiumDescription;
    data['strStadiumLocation'] = strStadiumLocation;
    data['intStadiumCapacity'] = intStadiumCapacity;
    data['strWebsite'] = strWebsite;
    data['strFacebook'] = strFacebook;
    data['strTwitter'] = strTwitter;
    data['strInstagram'] = strInstagram;
    data['strDescriptionEN'] = strDescriptionEN;
    data['strDescriptionDE'] = strDescriptionDE;
    data['strDescriptionFR'] = strDescriptionFR;
    data['strDescriptionCN'] = strDescriptionCN;
    data['strDescriptionIT'] = strDescriptionIT;
    data['strDescriptionJP'] = strDescriptionJP;
    data['strDescriptionRU'] = strDescriptionRU;
    data['strDescriptionES'] = strDescriptionES;
    data['strDescriptionPT'] = strDescriptionPT;
    data['strDescriptionSE'] = strDescriptionSE;
    data['strDescriptionNL'] = strDescriptionNL;
    data['strDescriptionHU'] = strDescriptionHU;
    data['strDescriptionNO'] = strDescriptionNO;
    data['strDescriptionIL'] = strDescriptionIL;
    data['strDescriptionPL'] = strDescriptionPL;
    data['strKitColour1'] = strKitColour1;
    data['strKitColour2'] = strKitColour2;
    data['strKitColour3'] = strKitColour3;
    data['strGender'] = strGender;
    data['strCountry'] = strCountry;
    data['strTeamBadge'] = strTeamBadge;
    data['strTeamJersey'] = strTeamJersey;
    data['strTeamLogo'] = strTeamLogo;
    data['strTeamFanart1'] = strTeamFanart1;
    data['strTeamFanart2'] = strTeamFanart2;
    data['strTeamFanart3'] = strTeamFanart3;
    data['strTeamFanart4'] = strTeamFanart4;
    data['strTeamBanner'] = strTeamBanner;
    data['strYoutube'] = strYoutube;
    data['strLocked'] = strLocked;
    return data;
  }

  @override
  List<Object?> get props => [
        idTeam,
        idSoccerXML,
        idAPIfootball,
        intLoved,
        strTeam,
        strTeamShort,
        strAlternate,
        intFormedYear,
        strSport,
        strLeague,
        idLeague,
        strLeague2,
        idLeague2,
        strLeague3,
        idLeague3,
        strLeague4,
        idLeague4,
        strLeague5,
        idLeague5,
        strLeague6,
        idLeague6,
        strLeague7,
        idLeague7,
        strDivision,
        strManager,
        strStadium,
        strKeywords,
        strRSS,
        strStadiumThumb,
        strStadiumDescription,
        strStadiumLocation,
        intStadiumCapacity,
        strWebsite,
        strFacebook,
        strTwitter,
        strInstagram,
        strDescriptionEN,
        strDescriptionDE,
        strDescriptionFR,
        strDescriptionCN,
        strDescriptionIT,
        strDescriptionJP,
        strDescriptionRU,
        strDescriptionES,
        strDescriptionPT,
        strDescriptionSE,
        strDescriptionNL,
        strDescriptionHU,
        strDescriptionNO,
        strDescriptionIL,
        strDescriptionPL,
        strKitColour1,
        strKitColour2,
        strKitColour3,
        strGender,
        strCountry,
        strTeamBadge,
        strTeamJersey,
        strTeamLogo,
        strTeamFanart1,
        strTeamFanart2,
        strTeamFanart3,
        strTeamFanart4,
        strTeamBanner,
        strYoutube,
        strLocked,
      ];
}
