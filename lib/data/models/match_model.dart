class Match {
  String matchName;
  String numberOfGoals;
  String runningTime;
  String totalTime;

  Match(
      {required this.matchName,
      required this.numberOfGoals,
      required this.runningTime,
      required this.totalTime});

  factory Match.fromJson(Map<String, dynamic> json) => Match(
        matchName: json['match_name'],
        numberOfGoals: json['number_of_goals'],
        runningTime: json['running_time'],
        totalTime: json['total_time'],
      );
}
