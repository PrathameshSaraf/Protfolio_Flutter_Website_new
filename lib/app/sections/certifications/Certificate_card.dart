import 'package:flutter/material.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:sizer/sizer.dart';

import '../../utils/certificate_model.dart';
import '../../utils/exprience_utils.dart';

class CertificateCard extends StatefulWidget {
  final CertificateModel exprience;

  const CertificateCard({Key? key, required this.exprience}) : super(key: key);

  @override
  CertificateCardState createState() => CertificateCardState();
}

class CertificateCardState extends State<CertificateCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var theme = Theme.of(context);
    return InkWell(

      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,

      child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
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
          child: InkWell(

            onTap: () {},
            onHover: (isHovering) {
              if (isHovering) {
                setState(() => isHover = true);
              } else {
                setState(() => isHover = false);
              }
            },
            borderRadius: BorderRadius.circular(30),
            child: AnimatedContainer(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                   color: Color(0xFF000515)
                ),
                duration: const Duration(milliseconds: 500),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " certificateList[index].name",
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "organization",
                            style: const TextStyle(color: Colors.amber),
                          ),
                          Text(
                            "date",
                            style:
                                const TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0 / 2,
                      ),
                      Text.rich(
                        maxLines: 1,
                        TextSpan(
                            text: 'Skills : ',
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            children: [
                              TextSpan(
                                text: "skills",
                                style: const TextStyle(
                                    color: Colors.grey,
                                    overflow: TextOverflow.ellipsis),
                              )
                            ]),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        onTap: () {
                          // launchUrl(Uri.parse(certificateList[index].credential));
                        },
                        child: Container(
                          height: 40,
                          width: 150,
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
                                'Credentials',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 10),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.add ,color: Colors.white,size: 10,
                                  // CupertinoIcons.arrow_turn_up_right,color: Colors.white,size: 10,
                                  )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          )),
    );
  }
}
