import 'package:flutter_test_1/app/data/remote/search_all_teams_response.dart';

abstract class SearchAllTeamsRepositoryImpl {
  Future<SearchAllTeamsResponse> getTeamList({Map<String, dynamic>? query});
}
