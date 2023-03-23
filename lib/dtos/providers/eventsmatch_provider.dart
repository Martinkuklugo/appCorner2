import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:liga_corner_app/dtos/responses/requests/eventsmatch_responses.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

class MatchsEventsProvier extends ChangeNotifier {
  bool isLoading = true;

  final logger = Logger();

  List<EventsMathcDto>? _eventos; //propiedad privada

  List<EventsMathcDto>? get partidos => _eventos; // obtener datos del usuario

  Future fetchUsers() async {
    final response = await http.get(Uri.parse(
        'https://api.ligasabatinadefutbol.com.mx/api/match-events?page=302'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final json = jsonDecode(response.body);
      final List<dynamic> data = json['data'];
      _eventos = data.map((e) => EventsMathcDto.fromMap(e)).toList();
      logger.d(data);
      isLoading = false;
      notifyListeners();
    } else {
      throw Exception('Failed to load album');
    }
  }
}
