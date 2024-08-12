import 'package:rtg/widgets/custom_app_bar.dart';
import 'package:rtg/widgets/widgets_imports.dart';

class FlightInfo extends StatelessWidget {
  const FlightInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "My Tickets", actions: [
        GestureDetector(
          onTap: () {
            Get.toNamed("/esim");
          },
          child: Image.asset(
            "assets/images/esim.png",
            height: kHeight(.03),
          ),
        ),
        widthBox(.02),
        GestureDetector(
          onTap: () {
            Get.toNamed("/addtickets");
          },
          child: const Icon(
            Icons.add,
            color: KColors.kPrimary,
          ),
        ),
        widthBox(.02),
        GestureDetector(
          onTap: () {
            Get.toNamed("/maps");
          },
          child: const Icon(
            Icons.search,
            color: KColors.kPrimary,
          ),
        ),
      ]),
      backgroundColor: KColors.kBlack,
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightBox(.04),
              GestureDetector(
                onTap: () {
                  //Get.toNamed("/resortdetails");
                },
                child: SizedBox(
                  height: kHeight(.32),
                  width: context.width,
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("/flightticketdetails");
                        },
                        child: Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset("assets/images/ticket.png")),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("/hotelreservation");
                        },
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(
                                "assets/images/hotelreservation.png")),
                      ),
                    ],
                  ),
                ),
              ),
              heightBox(.02),
              CustomText(
                  text: "Recommended",
                  textStyle: KTextStyles()
                      .normal(fontSize: 16, textColor: KColors.kWhite)),
              heightBox(.02),
              SizedBox(
                height: kHeight(.2),
                width: context.width,
                child: ListView.separated(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(0),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const RecommendActionBox();
                    },
                    separatorBuilder: (context, index) => widthBox(.02),
                    itemCount: 3),
              ),
              heightBox(.08),
              Center(
                child: SizedBox(
                  height: kHeight(.06),
                  width: kWidth(.9),
                  child: Stack(
                    children: [
                      Container(
                        height: kHeight(.06),
                        width: kWidth(.44),
                        decoration: BoxDecoration(
                            color: KColors.kSecondary,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(kWidth(.03)))),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/food.png",
                              height: kHeight(.03),
                            ),
                            widthBox(.02),
                            CustomText(
                                text: "Food and Drinks",
                                textStyle: KTextStyles().normal(
                                    fontSize: 12, textColor: KColors.kWhite))
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: kWidth(.41)),
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            //Get.toNamed("/attraction");
                          },
                          child: Container(
                            height: kHeight(.06),
                            width: kWidth(.45),
                            decoration: BoxDecoration(
                                color: const Color(0xff86CAF1),
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(kWidth(.03)))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/swing.png",
                                  height: kHeight(.03),
                                ),
                                widthBox(.02),
                                CustomText(
                                    text: "Attractions",
                                    textStyle: KTextStyles().normal(
                                        fontSize: 12,
                                        textColor: KColors.kWhite))
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RecommendActionBox extends StatelessWidget {
  const RecommendActionBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("/restaurant");
      },
      child: Container(
        height: kHeight(.2),
        width: kWidth(.8),
        decoration: BoxDecoration(
            color: const Color(0xff252525),
            borderRadius: BorderRadius.circular(kWidth(.04))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/food1.png",
              height: kHeight(.13),
              fit: BoxFit.fill,
            ),
            heightBox(.01),
            Padding(
              padding: EdgeInsets.only(left: kWidth(.04)),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: "Burger King",
                        textStyle: KTextStyles()
                            .normal(fontSize: 14, textColor: KColors.kWhite)),
                    heightBox(.005),
                    CustomText(
                        text: "Restaurant",
                        textStyle: KTextStyles().normal(
                          fontSize: 10,
                          textColor: KColors.kGrey,
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
