import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../changes/strings.dart';
import '../../../core/configs/others/space.dart';
import '../../utils/certificate_model.dart';
import '../../utils/exprience_utils.dart';
import '../../widgets/custom_text_heading.dart';
import 'Certificate_card.dart';
class CertificateDesktop extends StatefulWidget {
  const CertificateDesktop({Key? key}) : super(key: key);

  @override
  CertificateDesktopState createState() => CertificateDesktopState();
}

class CertificateDesktopState extends State<CertificateDesktop> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width / 8)
          .copyWith(bottom: height * 0.2),
      child: Column(
        children: [
          const CustomSectionHeading(text: '\nCertifications & License '),
          Space.y(1.w)!,
          CustomSectionSubHeading(text: servicesSubHeading),
          Space.y(2.w)!,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Wrap(
                  spacing: width * 0.03,
                  runSpacing: height * 0.05,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children:certificateList.asMap()
                      .entries
                      .map((e) => CertificateCard(exprience:e.value),
                  ).toList(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
