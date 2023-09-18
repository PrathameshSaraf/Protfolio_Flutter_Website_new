import 'package:flutter/material.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:sizer/sizer.dart';

import '../../../core/color/colors.dart';
import '../../../core/res/responsive.dart';
import '../../utils/exprience_utils.dart';


class ExprienceCard extends StatefulWidget {
  final ExperienceUtils exprience;

  const ExprienceCard({Key? key, required this.exprience}) : super(key: key);

  @override
  ExprienceCardState createState() => ExprienceCardState();
}

class ExprienceCardState extends State<ExprienceCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    var theme = Theme.of(context);
    return InkWell(
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
        width: Responsive.isTablet(context) ? width*0.38:width*0.35,
        height: width*0.13,
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        decoration: BoxDecoration(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Space.x(2.w)!,
                Container(
                  width: width*0.02,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), //<-- SEE HERE
                  ),
                  child: Image.asset(widget.exprience.companyLogoImg),
                ),
                Space.x(2.w)!,
                Column(
                  children: [
                    Text(widget.exprience.companyName,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: isHover ? whiteColor : theme.textColor,
                        )),
                    Text(widget.exprience.startDate.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          //color: Colors.yellowAccent,
                          color: isHover ? whiteColor : theme.textColor,
                        )),

                  ],
                ),
              ],
            ),
            Space.y(1.w)!,
            Text(
              widget.exprience.description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: isHover ? whiteColor.withOpacity(0.8) : theme.textColor,
                fontWeight: FontWeight.w200,
                fontSize: 13,
              ),
            ),
            if (!(Responsive.isMobile(context) || Responsive.isTablet(context)))
              Expanded(
                child: Row(
                  children: widget.exprience.technologiesUsed.map((e) => Row(
                    children: [
                      const Text('🛠   ',style: TextStyle(color: Colors.cyan),),
                      Text(
                        "$e  | ",
                        style: TextStyle(
                            color: Colors.cyan
                          //color: isHover ? whiteColor : theme.textColor,
                        ),
                      ),
                    ],
                  )).toList(),
                ),
              )
          ],
        ),
      ),
    );
  }
}
