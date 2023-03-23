// To parse this JSON data, do
//
//     final eventsMathcDto = eventsMathcDtoFromMap(jsonString);

import 'dart:convert';

List<EventsMathcDto> eventsMathcDtoFromMap(String str) =>
    List<EventsMathcDto>.from(
        json.decode(str).map((x) => EventsMathcDto.fromMap(x)));

String eventsMathcDtoToMap(List<EventsMathcDto> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class EventsMathcDto {
  EventsMathcDto({
    required this.eId,
    required this.playerId,
    required this.matchId,
    required this.ecount,
    required this.minutes,
    required this.tId,
    required this.id,
    required this.player,
    required this.match,
    required this.event,
    required this.team,
  });

  final String eId;
  final String playerId;
  final String matchId;
  final String ecount;
  final String minutes;
  final String tId;
  final int id;
  final Player player;
  final Match match;
  final Event event;
  final Team team;

  factory EventsMathcDto.fromMap(Map<String, dynamic> json) => EventsMathcDto(
        eId: json["e_id"],
        playerId: json["player_id"],
        matchId: json["match_id"],
        ecount: json["ecount"],
        minutes: json["minutes"],
        tId: json["t_id"],
        id: json["id"],
        player: Player.fromMap(json["player"]),
        match: Match.fromMap(json["match"]),
        event: Event.fromMap(json["event"]),
        team: Team.fromMap(json["team"]),
      );

  Map<String, dynamic> toMap() => {
        "e_id": eId,
        "player_id": playerId,
        "match_id": matchId,
        "ecount": ecount,
        "minutes": minutes,
        "t_id": tId,
        "id": id,
        "player": player.toMap(),
        "match": match.toMap(),
        "event": event.toMap(),
        "team": team.toMap(),
      };
}

class Event {
  Event({
    required this.id,
    required this.eName,
    required this.eImg,
    required this.eDescr,
    required this.playerEvent,
  });

  final int id;
  final String eName;
  final String eImg;
  final String eDescr;
  final String playerEvent;

  factory Event.fromMap(Map<String, dynamic> json) => Event(
        id: json["id"],
        eName: json["e_name"],
        eImg: json["e_img"],
        eDescr: json["e_descr"],
        playerEvent: json["player_event"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "e_name": eName,
        "e_img": eImg,
        "e_descr": eDescr,
        "player_event": playerEvent,
      };
}

class Match {
  Match({
    required this.id,
    required this.mId,
    required this.team1Id,
    required this.team2Id,
    required this.score1,
    required this.score2,
    required this.matchDescr,
    required this.published,
    required this.isExtra,
    required this.mPlayed,
    required this.mDate,
    required this.mTime,
    required this.mLocation,
    required this.refereeId,
    required this.bonus1,
    required this.bonus2,
  });

  final int id;
  final String mId;
  final String team1Id;
  final String team2Id;
  final String score1;
  final String score2;
  final String matchDescr;
  final String published;
  final String isExtra;
  final String mPlayed;
  final DateTime mDate;
  final String mTime;
  final String mLocation;
  final String refereeId;
  final String bonus1;
  final String bonus2;

  factory Match.fromMap(Map<String, dynamic> json) => Match(
        id: json["id"],
        mId: json["m_id"],
        team1Id: json["team1_id"],
        team2Id: json["team2_id"],
        score1: json["score1"],
        score2: json["score2"],
        matchDescr: json["match_descr"],
        published: json["published"],
        isExtra: json["is_extra"],
        mPlayed: json["m_played"],
        mDate: DateTime.parse(json["m_date"]),
        mTime: json["m_time"],
        mLocation: json["m_location"],
        refereeId: json["refereeId"],
        bonus1: json["bonus1"],
        bonus2: json["bonus2"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "m_id": mId,
        "team1_id": team1Id,
        "team2_id": team2Id,
        "score1": score1,
        "score2": score2,
        "match_descr": matchDescr,
        "published": published,
        "is_extra": isExtra,
        "m_played": mPlayed,
        "m_date":
            "${mDate.year.toString().padLeft(4, '0')}-${mDate.month.toString().padLeft(2, '0')}-${mDate.day.toString().padLeft(2, '0')}",
        "m_time": mTime,
        "m_location": mLocation,
        "refereeId": refereeId,
        "bonus1": bonus1,
        "bonus2": bonus2,
      };
}

class Player {
  Player({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.nick,
    required this.about,
    required this.positionId,
    required this.defImg,
    required this.teamId,
    required this.playerNumber,
    required this.curp,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final String firstName;
  final String lastName;
  final String nick;
  final String about;
  final String positionId;
  final String defImg;
  final String teamId;
  final String playerNumber;
  final dynamic curp;
  final String status;
  final DateTime createdAt;
  final DateTime updatedAt;

  factory Player.fromMap(Map<String, dynamic> json) => Player(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        nick: json["nick"],
        about: json["about"],
        positionId: json["position_id"],
        defImg: json["def_img"],
        teamId: json["team_id"],
        playerNumber: json["player_number"],
        curp: json["curp"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "nick": nick,
        "about": about,
        "position_id": positionId,
        "def_img": defImg,
        "team_id": teamId,
        "player_number": playerNumber,
        "curp": curp,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Team {
  Team({
    required this.id,
    required this.tName,
    required this.tDescr,
    required this.tYteam,
    required this.defImg,
    required this.tEmblem,
    required this.tCity,
  });

  final int id;
  final String tName;
  final String tDescr;
  final String tYteam;
  final String defImg;
  final String tEmblem;
  final String tCity;

  factory Team.fromMap(Map<String, dynamic> json) => Team(
        id: json["id"],
        tName: json["t_name"],
        tDescr: json["t_descr"],
        tYteam: json["t_yteam"],
        defImg: json["def_img"],
        tEmblem: json["t_emblem"],
        tCity: json["t_city"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "t_name": tName,
        "t_descr": tDescr,
        "t_yteam": tYteam,
        "def_img": defImg,
        "t_emblem": tEmblem,
        "t_city": tCity,
      };
}
