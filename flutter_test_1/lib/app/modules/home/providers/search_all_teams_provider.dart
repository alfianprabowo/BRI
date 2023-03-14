import 'package:flutter_test_1/app/data/remote/search_all_teams_response.dart';
import 'package:flutter_test_1/app/modules/home/providers/serach_all_teams_provider_impl.dart';
import 'package:flutter_test_1/app/utils/services/index.dart';
import 'package:get/get.dart';

class SearchAllTeamsProvider extends BaseProvider
    implements SearchAllTeamsProviderImpl {
  @override
  InternalFinalCallback<void> get onStart {
    httpClient.defaultDecoder =
        (dynamic val) => SearchAllTeamsResponse.fromJson(val);
    return super.onStart;
  }

  @override
  Future<Response<SearchAllTeamsResponse>> getTeamList({
    required String path,
    Map<String, dynamic>? query,
  }) =>
      get(
        path,
        query: query,
      );
}
