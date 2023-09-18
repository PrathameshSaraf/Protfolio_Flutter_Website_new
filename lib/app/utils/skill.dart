import 'package:flutter/material.dart';

class Skill {
  final String? skill;
  final int? percentage;

  Skill({
    required this.skill,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return {
      "skill":skill,
      "percentage": percentage,

    };
  }


  factory Skill.fromMap(Map<String, dynamic> map) {
    return Skill(
      skill: map['skill']??'',
      percentage: map['percentage']??'',
    );
  }
}
