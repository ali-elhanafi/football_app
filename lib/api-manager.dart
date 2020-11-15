import 'dart:convert';

import 'package:football/soccer-model.dart';
import 'package:http/http.dart';

class SoccerApi {
  final String apiUrl = "https://v3.football.api-sports.io/fixtures?season=2020&league=39";
  ///////////import api keys

  //static String api_Key = "4814902acbff93b54b812ebe91f85dc8";
  /////////  create headers
  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "4814902acbff93b54b812ebe91f85dc8"
  };
  //// create methods ///

  Future<List<SoccerMatch>> getAllMatches() async {
    Response res = await get(apiUrl, headers: headers);
    var body;
    if (res.statusCode == 200) {
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body['response'];
      print("Api servics: ${body}");
      List<SoccerMatch> matches = matchesList
          .map((dynamic item) => SoccerMatch.fromJson(item))
          .toList();
      return matches;
    }
  }
}
