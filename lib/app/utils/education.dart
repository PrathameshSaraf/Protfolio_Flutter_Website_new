import 'package:flutter/material.dart';

class Education {
  final String clgName;
  final String description;
  final String linkName;
  final DateTime startDate;
  final DateTime endDate;
  final String educationName; // ssc,btech,diploma

  Education(
      {required this.clgName,
      required this.description,
      required this.linkName,
      required this.endDate,
      required this.startDate,
      required this.educationName});
}

List<Education> educationList = [
  Education(
      clgName: "Vishwakarma institute of technology, Pune",
      description:
          "I am pursuing a B-Tech in Electronics and Telecommunication Engineering at Vishwakarma Institute of Technology, Pune. My studies have exposed me to various technologies and skills, including Java, Machine Learning, Data Science, Computer Vision, Web Technology, and Data Structure",
      linkName: "https://www.vit.edu/",
      endDate: DateTime.utc(
        2023,
        06,
        06,
      ),
      startDate: DateTime.utc(
        2023,
        06,
        06,
      ),
      educationName: "B-tech"),
  Education(
      clgName: "ला. ना. सार्वजनिक विद्यालय जळगाव",
      description:
          " I completed my SSC at La.Na.High School, Jalgaon, securing a percentage of 79.80% from June 2017 to June 2018.",
      linkName: "https://www.facebook.com/LNSHighschoolJalgaon/",
      endDate: DateTime.utc(
        2012,
        06,
        06,
      ),
      startDate: DateTime.utc(
        2018,
        06,
        06,
      ),
      educationName: "SSC (Matric)"),
  Education(
      clgName: "Government Polytechnic, Jalgaon",
      description: "I completed a Diploma in Electronics and Telecommunication Engineering from Government Polytechnic, Jalgaon, achieving an impressive percentage of 95.12%. During this course, I gained expertise in Embedded Systems, Basic Electronics, and Digital Electronics.",
      linkName: "http://gpjalgaon.org.in/",
      endDate: DateTime.utc(2023,06,06,),
      startDate: DateTime.utc(2023,06,06,),
      educationName: "Diploama")
];
