import 'package:get/get.dart';

import '../team_model.dart';

class TeamProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Team.fromJson(map);
      if (map is List) return map.map((item) => Team.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Team?> getTeam(int id) async {
    final response = await get('team/$id');
    return response.body;
  }

  Future<Response<Team>> postTeam(Team team) async => await post('team', team);
  Future<Response> deleteTeam(int id) async => await delete('team/$id');
}
