import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mysite/app/sections/contact/contact.dart';
import 'package:mysite/app/sections/home/home.dart';
import 'package:mysite/app/sections/portfolio/portfolio.dart';
import 'package:mysite/app/sections/services/services.dart';
import 'package:mysite/app/utils/loading_Page.dart';
import 'package:mysite/app/utils/skill_section.dart';
import 'package:mysite/app/widgets/footer.dart';
import '../../core/res/ResponsiveCertificate.dart';
import '../sections/Education/education_section.dart';
import '../sections/Exprience/Exprience.dart';
import '../sections/certifications/Certificate.dart';


class BodyUtils {

  static List<Widget> views = [
    HomePage(),
    Services(),
    Exprience(),
    EducationSection(),
    Certificate(),
    SkillSection(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
