import 'package:flutter_test_1/app/data/remote/search_all_teams_response.dart';
import 'package:get/get.dart';

abstract class SearchAllTeamsProviderImpl {
  Future<Response<SearchAllTeamsResponse>> getTeamList({
    required String path,
    Map<String, dynamic>? query,
  });
}
