class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tools;
  final String description;

  ServicesUtils(
      {required this.name, required this.icon, required this.description, required this.tools});
  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "icon":icon,
      "description":description,
      "tools":tools,
    };
  }
  factory ServicesUtils.fromMap(Map<String, dynamic> map) {
    return ServicesUtils(
      name: map['name'],
      icon: map['icon'],
      description: map['description'],
      tools: map['tools'],
    );
  }
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Android App Development',
    icon: 'assets/icons/android.svg',
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
    tools: ['Flutter', 'Firebase', 'Android (Kotlin or Java)'],
  ),
  ServicesUtils(
    name: 'iOS App Development',
    icon: 'assets/icons/apple.svg',
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
    tools: ['Flutter', 'Dart','A'],
  ),
  // ServicesUtils(
  //   name: 'UI/UX Designing',
  //   icon: 'assets/icons/graphic.svg',
  //   description:
  //       "I'm creating elegant designs suited to your needs following core design theory. ",
  //   tools: ['Adobe XD', 'Figma', 'Photoshop'],
  // ),
  ServicesUtils(
    name: 'Web Development',
    icon: 'assets/icons/website.svg',
    description:
        "Do you have an idea for your next great website? Let's make it a reality.",
    tools: ['Flutter', 'Html,css,js', 'PHP,Django'],
  ),
];
