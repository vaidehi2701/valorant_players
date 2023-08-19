import 'dart:convert';

import '../models/players_response_model.dart';
import 'package:http/http.dart' as http;

class PlayersApi {
  Future<PlayersResponseModel> getPlayers() async {
    const String baseUrl = "https://valorant-api.com/v1/agents";
    var client = http.Client();
    try {
      http.Response response = await client.get(Uri.parse(baseUrl));
      return PlayersResponseModel.fromJson(json.decode(response.body));
    } finally {
      client.close();
    }
  }
}
