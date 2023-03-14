import 'package:flutter/material.dart';
import 'package:flutter_test_1/app/data/remote/search_all_teams_response.dart';
import 'package:flutter_test_1/app/modules/home/providers/search_all_teams_provider.dart';
import 'package:flutter_test_1/app/modules/home/repositories/search_all_teams_repository_impl.dart';
import 'package:flutter_test_1/app/utils/network/index.dart';
import 'package:flutter_test_1/app/utils/services/index.dart';
import 'package:get/get.dart';

class SearchAllTeamsRepository extends BaseRepository<SearchAllTeamsProvider>
    implements SearchAllTeamsRepositoryImpl {
  SearchAllTeamsRepository() : super(provider: SearchAllTeamsProvider());

  @override
  Future<SearchAllTeamsResponse> getTeamList({
    Map<String, dynamic>? query,
  }) async {
    final Response<SearchAllTeamsResponse> response =
        await provider.getTeamList(
      path: Url.searchAllTeams,
      query: query,
    );
    if (response.status.hasError) {
      return Future<SearchAllTeamsResponse>.error(response.statusText!);
    } else {
      return response.body!;
    }
  }
}
