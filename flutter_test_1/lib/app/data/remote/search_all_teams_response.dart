import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter_test_1/app/modules/team_detail/team_model.dart';

class SearchAllTeamsResponse extends Equatable {
  final List<Team>? teams;

  const SearchAllTeamsResponse({
    this.teams,
  });

  factory SearchAllTeamsResponse.fromJson(Map<String, dynamic> json) =>
      SearchAllTeamsResponse(
        teams: json['teams'] != null
            ? List<Team>.from(
                json['teams'].map(
                  (dynamic x) => Team.fromJson(x),
                ),
              )
            : null,
      );

  Map<String, dynamic> toJson() => {
        "teams": teams != null
            ? List<Team>.from(
                teams!.map(
                  (Team x) => x.toJson(),
                ),
              )
            : null,
      };

  factory SearchAllTeamsResponse.fromRawJson(String str) =>
      SearchAllTeamsResponse.fromJson(json.decode(str));

  @override
  List<Object?> get props => [
        teams,
      ];
}
