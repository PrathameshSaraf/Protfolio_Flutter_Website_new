import 'package:flutter/material.dart';
import 'package:mysite/app/utils/screen_helper.dart';

import 'package:responsive_framework/responsive_framework.dart';


import '../widgets/custom_text_heading.dart';
import 'constants.dart';
import 'skill.dart';

List<Skill> skills = [
  Skill(
    skill: "Flutter",
    percentage: 90,
  ),
  Skill(
    skill: "Data Science",
    percentage: 75,
  ),
  Skill(
    skill: "Javascript",
    percentage: 65,
  ),
  Skill(
    skill: "Java",
    percentage: 85,
  ),
  Skill(
    skill: "Python",
    percentage: 80,
  ),
  Skill(
    skill: "Django",
    percentage: 75,
  ),

];

class SkillSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return ResponsiveWrapper(
            maxWidth: width+60,
            minWidth: width+60,
            child: Flex(
              direction: ScreenHelper.isMobile(context)
                  ? Axis.vertical
                  : Axis.horizontal,
              children: [

                Expanded(
                  flex: ScreenHelper.isMobile(context) ? 0 : 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomSectionHeading(text: "\nSkills",),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "This is all the skills listed below more will be added in due time. This is all the skills listed below more will be added in due time.",
                        style: TextStyle(
                          color: kCaptionColor,
                          height: 1.5,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Column(
                        children: skills
                            .map(
                              (skill) => Container(
                                margin: EdgeInsets.only(bottom: 15.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: skill.percentage!,
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10.0),
                                        alignment: Alignment.centerLeft,
                                        height: 38.0,
                                        child: Text(skill.skill!),
                                        color: Colors.blue,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Expanded(
                                      // remaining (blank part)
                                      flex: 100 - skill.percentage!,
                                      child: Divider(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      "${skill.percentage}%",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
