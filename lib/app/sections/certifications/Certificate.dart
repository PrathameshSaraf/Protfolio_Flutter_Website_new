import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mysite/app/utils/services_utils.dart';
import 'package:mysite/app/widgets/custom_text_heading.dart';
import 'package:mysite/changes/strings.dart';
import 'package:mysite/core/color/colors.dart';
import 'package:mysite/core/res/responsive.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:sizer/sizer.dart';

import '../../utils/exprience_utils.dart';
import 'Certificate_desktop.dart';


part 'Certificate_mobile.dart';


class Certificate extends StatelessWidget {
  const Certificate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: CertificateMobile(),
      tablet: CertificateMobile(),
      desktop: CertificateDesktop(),
    );
  }
}
