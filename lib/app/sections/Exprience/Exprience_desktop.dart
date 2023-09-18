import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '_Exprience_card.dart';
import '../../../changes/strings.dart';
import '../../../core/configs/others/space.dart';
import '../../utils/exprience_utils.dart';
import '../../widgets/custom_text_heading.dart';
class ExprienceDesktop extends StatefulWidget {
  const ExprienceDesktop({Key? key}) : super(key: key);

  @override
  ExprienceDesktopState createState() => ExprienceDesktopState();
}

class ExprienceDesktopState extends State<ExprienceDesktop> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width / 8)
          .copyWith(bottom: height * 0.2),
      child: Column(
        children: [
          const CustomSectionHeading(text: '\nExperience'),
          Space.y(1.w)!,
          CustomSectionSubHeading(text: servicesSubHeading),
          Space.y(2.w)!,
          Wrap(
            spacing: width * 0.03,
            runSpacing: height * 0.05,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            children:experienceUtils.asMap()
                .entries
                .map((e) => ExprienceCard(exprience: e.value),
            ).toList(),
          )
        ],
      ),
    );
  }
}
