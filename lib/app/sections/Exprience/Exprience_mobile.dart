part of 'Exprience.dart';

class ExprienceMobile extends StatelessWidget {
  const ExprienceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        const CustomSectionHeading(text: '\nExperience'),
        Space.y(3.w)!,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CustomSectionSubHeading(text: servicesSubHeading),
        ),
        Space.y(5.w)!,
        CarouselSlider.builder(
          itemCount: servicesUtils.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: EdgeInsets.symmetric(vertical: 0.5.w),
            child: TextField()
          ),
          options: CarouselOptions(
            viewportFraction: 0.6,
            height: 300,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        )
      ],
    );
  }
}
