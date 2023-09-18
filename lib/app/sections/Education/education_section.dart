import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:sizer/sizer.dart';

import '../../../core/color/colors.dart';
import '../../../core/configs/others/space.dart';

import '../../utils/constants.dart';
import '../../utils/education.dart';
import '../../utils/screen_helper.dart';
import '../../widgets/custom_text_heading.dart';


class EducationSection extends StatefulWidget {
  @override
  State<EducationSection> createState() => _EducationSectionState();
}

class _EducationSectionState extends State<EducationSection> {
  bool isLoading = true;

  @override
  void initState(){}



  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    bool isHover = false;
    var theme = Theme.of(context);
    return Container(
      alignment: Alignment.center,
      child: ResponsiveWrapper(
         maxWidth: width+60,
         minWidth: width+60,
         defaultScale: false,
        child: Column(
          children: [
            const CustomSectionHeading(text: "\nEducation"),
            Space.y(3.w)!,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: CustomSectionSubHeading(
                  text: 'A full stack all round developer that does all the job he needs to do at all times. Actually this is a false statement'),
            ),
            SizedBox(
              height: 40.0,
            ),
            LayoutBuilder(
              builder: (context, constraints) {

                return Container(
                  child: Wrap(
                    spacing: 40.0,
                    runSpacing: 40.0,
                    children:  educationList.map(
                            (education) => InkWell(
                              hoverColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {},
                              onHover: (isHovering) {
                                if (isHovering) {
                                  setState(() => isHover = true);
                                } else {
                                  setState(() => isHover = false);
                                }
                              },

                         child: Container(
                          width: constraints.maxWidth / 2.0 - 20.0,
                          padding: EdgeInsets.all(20),
                          decoration:BoxDecoration(
                            // gradient: isHover ? pinkpurple : grayBack,
                              color: Color(0xFF000515),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.pink,
                                  offset: const Offset(-2, 0),
                                  blurRadius: isHover ? 20 : 10,
                                ),
                                BoxShadow(
                                  color: Colors.blue,
                                  offset: const Offset(2, 0),
                                  blurRadius: isHover ? 20 : 10,
                                )
                              ]),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${education.startDate}  |  ${education.educationName}",
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  education.clgName,
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  education.description,
                                  textAlign: TextAlign.justify,
                                  maxLines: 6,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    // color: kCaptionColor,
                                    height: 1.5,
                                  ),
                                ),
                                SizedBox( height: 20.0,),
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      gradient: LinearGradient(colors: [
                                        Colors.pink,
                                        Colors.blue.shade900,
                                      ]),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.blue,
                                            offset: Offset(0, -1),
                                            blurRadius: 5),
                                        BoxShadow(
                                            color: Colors.red,
                                            offset: Offset(0, 1),
                                            blurRadius: 5),
                                      ]),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        education.linkName,
                                        style:
                                        TextStyle(color: Colors.white, fontSize: 10),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(Icons.telegram ,color: Colors.white,size: 20,
                                        // CupertinoIcons.arrow_turn_up_right,color: Colors.white,size: 10,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                          ),
                        ),
                            )
                    ).toList(),
                  ),

                );
              },
            )
          ],
        ),
      ),
    );
  }
}
