import 'package:rtg/widgets/custom_app_bar.dart';
import 'package:rtg/widgets/widgets_imports.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

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
            children: [
              heightBox(.04),
              SizedBox(
                height: kHeight(.58),
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset("assets/images/cardswiper.png")),
                    Padding(
                      padding: EdgeInsets.only(top: kHeight(.3)),
                      child: Center(
                          child: Image.asset("assets/images/busticket.png")),
                    ),
                    // SizedBox(
                    //     height: kHeight(.4),
                    //     width: context.width,
                    //     child: Swiper(
                    //       itemHeight: kHeight(.3),
                    //       itemBuilder: (BuildContext context, int index) {
                    //         return Image.asset(
                    //           "assets/images/ticket.png",
                    //           fit: BoxFit.fill,
                    //         );
                    //       },
                    //       itemCount: 10,
                    //       itemWidth: kWidth(.7),
                    //       layout: SwiperLayout.STACK,
                    //     )),

                    // SizedBox(
                    //   height: kHeight(.15),
                    //   width: context.width,
                    //   child: ListView.separated(
                    //       shrinkWrap: true,
                    //       padding: const EdgeInsets.all(0),
                    //       scrollDirection: Axis.horizontal,
                    //       itemBuilder: (context, index) {
                    //         return const AttractionsBox();
                    //       },
                    //       separatorBuilder: (context, index) => widthBox(.04),
                    //       itemCount: 3),
                    // )
                  ],
                ),
              ),
              heightBox(.04),
              PrimaryButton(
                text: "New Booking",
                function: () {
                  Get.toNamed("/homescreen");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AttractionsBox extends StatelessWidget {
  const AttractionsBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(.15),
      width: kWidth(.8),
      decoration: BoxDecoration(
        color: const Color(0xff1D1D1D),
        borderRadius: BorderRadius.circular(kWidth(.02)),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(kWidth(.04)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: "Football Game Event",
                    textStyle: KTextStyles()
                        .normal(fontSize: 14, textColor: KColors.kWhite)),
                CustomText(
                    text: "Stadium",
                    textStyle: KTextStyles()
                        .normal(fontSize: 14, textColor: KColors.kGrey)),
                const Spacer(),
                SizedBox(
                  width: kWidth(.4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.star,
                        size: kHeight(.02),
                        color: Colors.yellow,
                      ),
                      CustomText(
                          text: "4.5 (234k)",
                          textStyle: KTextStyles()
                              .normal(fontSize: 14, textColor: KColors.kGrey)),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: kHeight(.15),
            width: kWidth(.3),
            decoration: BoxDecoration(
                color: KColors.kWhite,
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(kWidth(.02)))),
            child: Image.asset("assets/images/match.png"),
          )
        ],
      ),
    );
  }
}
