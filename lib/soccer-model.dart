class SoccerMatch {
  Fixture fixture;
  Team home;
  Team away;
  Goal goal;
  SoccerMatch(this.fixture, this.away, this.home,this.goal);

  factory SoccerMatch.fromJson(Map<String, dynamic> json) {
    return SoccerMatch(
        Fixture.fromJson(json['fixture']),
        Team.fromJson(json['teams']['home']),
        Team.fromJson(json['teams']['away']),
        Goal.fromJson(json['goals']));
  }
}

/////////
class Fixture {
  int id;
  String date;
  Status status;
  Fixture(this.id,this.date,  this.status);

  factory Fixture.fromJson(Map<String, dynamic> json) {
    return Fixture( json['id'],json['date'], Status.fromJson(json['status']));
  }
}

////////
class Status {
  int elapsedTime;
  String long;
  Status(this.elapsedTime, this.long);

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(json['elapsedTime'], json['long']);
  }
}

//team data/////
class Team {
  int id;
  String logoUrl;
  String name;
  
  bool winner;

  Team(this.id, this.logoUrl, this.name, this.winner);
  /////////
  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(json['id'], json['logo'], json['name'], json['winner']);
  }
}

class Goal {
  int home;
  int away;
  Goal(this.home, this.away);
  //factory a method you use to copy data from json file
  factory Goal.fromJson(Map<String, dynamic> json) {
    return Goal(json['home'], json['away']);
  }
}
