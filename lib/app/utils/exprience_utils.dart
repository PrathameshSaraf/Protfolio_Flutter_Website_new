class ExperienceUtils {
  final String companyName;
  final String companyLogoImg;
  final List<String> technologiesUsed;
  final String description;
  final String role;
  final DateTime startDate;
  final DateTime endDate;

  ExperienceUtils(
      {required this.companyName,
      required this.companyLogoImg,
      required this.description,
      required this.technologiesUsed,
      required this.role,
      required this.startDate,
      required this.endDate});


}

List<ExperienceUtils> experienceUtils = [
  ExperienceUtils(
      companyName: "Tick Tech IT Solution",
      companyLogoImg: "assets/imgs/flutter.png",
      description: "Developed a car rental website using Django and PostgreSQL. Connected data to the database and rendered it on the website using Django. Collaborated with a team of developers and gained experience in working with databases.",
      technologiesUsed: ["Django","PostgreSQL","HTML","JavaScript"],
      role: "Web Developer Intern",
      startDate: DateTime.utc(2023,06,06,),
      endDate: DateTime.utc(2023,06,06,)
  ),
  ExperienceUtils(
      companyName: "Beeptech Innovation Pvt Ltd",
      companyLogoImg: "assets/imgs/flutter.png",
      description: "Developed a salon app with booking functionalities and an admin dashboard using Flutter and Firebase.",
      technologiesUsed: ["Flutter", "Firebase",],
      role: "Flutter Developer Intern",
      startDate: DateTime.utc(2023,06,06,),
      endDate: DateTime.utc(2023,06,06,)),

  ExperienceUtils(
      companyName: "Zylu Business Solutions Pvt Ltd",
      companyLogoImg: "assets/imgs/flutter.png",
      description: "Developed a mobile and web-based salon booking system using Flutter, PHP, Laravel, and Postman API technologies. • Proficient in developing back-end services and databases, as well as software testing and bug fixes. • Ensured a smooth user experience for the salon booking system.",
      technologiesUsed: ["Flutter", "Firebase","API","Laravel"],
      role: "Software Developer Intern",
      startDate: DateTime.utc(2023,06,06,),
      endDate: DateTime.utc(2023,06,06,)),
];
//
// List<ExperienceUtils> experienceUtils = [
//   ExperienceUtils(
//     companyName: 'Android App Development',
//     companyLogoImg: 'assets/imgs/logo_b.png',
//     description:
//     "Are you interested in the great Mobile app? Let's make it a reality.",
//     technologiesUsed: ['Flutter', 'Firebase', 'Android (Kotlin or Java)'],
//     role: 'SOftware Developer ',
//     date: '52-20-2'
//   ),
//   ExperienceUtils(
//       companyName: 'Android App Development',
//       companyLogoImg: 'assets/imgs/logo_b.png',
//       description:
//       "Developed a car rental website using Django and PostgreSQL. Connected data to the database and rendered it on the website using Django. Collaborated with a team of developers and gained experience in working with databases.",
//       technologiesUsed: ['Flutter', 'Firebase', 'Android (Kotlin or Java)'],
//       role: 'SOftware Developer ',
//       date: '02-2023 to 05-2023'
//   ),
//   ExperienceUtils(
//       companyName: 'Android App Development',
//       companyLogoImg: 'assets/imgs/logo_b.png',
//       description:
//       "Developed a car rental website using Django and PostgreSQL. Connected data to the database and rendered it on the website using Django. Collaborated with a team of developers and gained experience in working with databases.",
//
//       technologiesUsed: ['Flutter', 'Firebase', 'Android (Kotlin or Java)'],
//       role: 'SOftware Developer ',
//       date: '02-2023 to 05-2023'
//   ),
//   ExperienceUtils(
//       companyName: 'Android App Development',
//       companyLogoImg: 'assets/imgs/logo_b.png',
//       description:
//       "Developed a car rental website using Django and PostgreSQL. Connected data to the database and rendered it on the website using Django. Collaborated with a team of developers and gained experience in working with databases.",
//       technologiesUsed: ['Flutter', 'Firebase', 'Android (Kotlin or Java)'],
//       role: 'SOftware Developer ',
//       date: '02-2023 to 05-2023'
//   ),
// ];
