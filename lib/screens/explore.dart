import 'package:rtg/screens/history.dart';
import 'package:rtg/widgets/custom_app_bar.dart';
import 'package:rtg/widgets/widgets_imports.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.kBlack,
      appBar: const CustomAppBar(title: "Explore", actions: []),
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  thickness: 1,
                  color: KColors.kGrey,
                ),
                heightBox(.02),
                ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.all(0),
                    itemBuilder: (context, index) {
                      return HistoryBox();
                    },
                    separatorBuilder: (context, index) => heightBox(.02),
                    itemCount: 4)

                // Row(
                //   children: [
                //     Container(
                //       decoration: BoxDecoration(
                //         boxShadow: [
                //           BoxShadow(
                //               color: KColors.kGrey.withOpacity(.5),
                //               blurRadius: 5)
                //         ],
                //         color: const Color(0xff1D1D1D),
                //         borderRadius: BorderRadius.circular(kWidth(.04)),
                //       ),
                //       padding: EdgeInsets.all(kWidth(.02)),
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Container(
                //             height: kHeight(.15),
                //             width: kWidth(.4),
                //             decoration: BoxDecoration(
                //                 color: KColors.kWhite,
                //                 borderRadius:
                //                     BorderRadius.circular(kWidth(.04))),
                //             padding: EdgeInsets.all(kWidth(.04)),
                //             child: Image.asset(
                //               "assets/images/match.png",
                //             ),
                //           ),
                //           heightBox(.01),
                //           CustomText(
                //               text: "Football Game Event",
                //               textStyle: KTextStyles().normal(
                //                   textColor: KColors.kWhite,
                //                   fontWeight: FontWeight.bold)),
                //           CustomText(
                //               text: "Event",
                //               textStyle: KTextStyles()
                //                   .normal(textColor: KColors.kGrey))
                //         ],
                //       ),
                //     ),
                //     Container(
                //       decoration: BoxDecoration(
                //         boxShadow: [
                //           BoxShadow(
                //               color: KColors.kGrey.withOpacity(.5),
                //               blurRadius: 5)
                //         ],
                //         color: const Color(0xff1D1D1D),
                //         borderRadius: BorderRadius.circular(kWidth(.04)),
                //       ),
                //       padding: EdgeInsets.all(kWidth(.02)),
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Container(
                //             height: kHeight(.15),
                //             width: kWidth(.4),
                //             decoration: BoxDecoration(
                //                 color: KColors.kWhite,
                //                 borderRadius:
                //                     BorderRadius.circular(kWidth(.04))),
                //             padding: EdgeInsets.all(kWidth(.04)),
                //             child: Image.asset(
                //               "assets/images/burger.png",
                //             ),
                //           ),
                //           heightBox(.01),
                //           CustomText(
                //               text: "Burger Deals",
                //               textStyle: KTextStyles().normal(
                //                   textColor: KColors.kWhite,
                //                   fontWeight: FontWeight.bold)),
                //           SizedBox(
                //             width: kWidth(.4),
                //             child: Row(
                //               children: [
                //                 CustomText(
                //                     text: "Tayto",
                //                     textStyle: KTextStyles()
                //                         .normal(textColor: KColors.kGrey)),
                //                 const Spacer(),
                //                 Icon(
                //                   Icons.star,
                //                   color: Colors.yellow,
                //                   size: kHeight(.02),
                //                 ),
                //                 CustomText(
                //                     text: "4.5 (234k)",
                //                     textStyle: KTextStyles()
                //                         .normal(textColor: KColors.kWhite)),
                //               ],
                //             ),
                //           )
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HistoryBox extends StatelessWidget {
  const HistoryBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth(.9),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kWidth(.04)),
          color: const Color(0xff1d1d1d)),
      padding: EdgeInsets.all(kWidth(.02)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/Shape.png",
                  height: kHeight(.2),
                  width: context.width,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: kHeight(.15), right: kWidth(.04)),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kWidth(.02)),
                        color: KColors.kPrimary,
                      ),
                      padding: EdgeInsets.all(kWidth(.02)),
                      child: const CustomRichText(
                          normalColor: KColors.kWhite,
                          normalFontSize: 12,
                          focusPosition: FocusPosition.start,
                          focusedColor: KColors.kWhite,
                          focusedFontSize: 12,
                          normalText: "/month",
                          focusedText: "\$ 860"),
                    ),
                  ),
                )
              ],
            ),
          ),
          heightBox(.01),
          const CustomRichText(
              normalColor: KColors.kRed,
              normalFontSize: 12,
              focusPosition: FocusPosition.start,
              focusedColor: KColors.kWhite,
              focusedFontSize: 12,
              normalText: "",
              focusedText: "Full Package"),
          heightBox(.01),
          Row(
            children: [
              Image.asset(
                "assets/images/plane.png",
                height: kHeight(.015),
              ),
              widthBox(.01),
              CustomText(
                  text: "Flight",
                  textStyle: KTextStyles().normal(
                      fontSize: 10,
                      textColor: KColors.kWhite,
                      fontWeight: FontWeight.bold)),
              widthBox(.005),
              CustomText(
                  text: "500 \$",
                  textStyle: KTextStyles().normal(
                    fontSize: 10,
                    textColor: KColors.kWhite,
                  )),
              widthBox(.02),
              Image.asset(
                "assets/images/building.png",
                height: kHeight(.015),
              ),
              widthBox(.01),
              CustomText(
                  text: "Hotel",
                  textStyle: KTextStyles().normal(
                      fontSize: 10,
                      textColor: KColors.kWhite,
                      fontWeight: FontWeight.bold)),
              widthBox(.005),
              CustomText(
                  text: "500 \$",
                  textStyle: KTextStyles().normal(
                    fontSize: 10,
                    textColor: KColors.kWhite,
                  )),
              widthBox(.02),
              Image.asset(
                "assets/images/ball.png",
                height: kHeight(.015),
              ),
              widthBox(.01),
              CustomText(
                  text: "Football Game",
                  textStyle: KTextStyles().normal(
                      fontSize: 10,
                      textColor: KColors.kWhite,
                      fontWeight: FontWeight.bold)),
              widthBox(.005),
              CustomText(
                  text: "500 \$",
                  textStyle: KTextStyles().normal(
                    fontSize: 10,
                    textColor: KColors.kWhite,
                  )),
              widthBox(.02),
              Image.asset(
                "assets/images/esim.png",
                color: KColors.kWhite,
                height: kHeight(.015),
              ),
              widthBox(.01),
              CustomText(
                  text: "eSim",
                  textStyle: KTextStyles().normal(
                      fontSize: 10,
                      textColor: KColors.kWhite,
                      fontWeight: FontWeight.bold)),
              widthBox(.005),
              CustomText(
                  text: "60 \$",
                  textStyle: KTextStyles().normal(
                    fontSize: 10,
                    textColor: KColors.kWhite,
                  )),
            ],
          ),
          heightBox(.02),
          CustomText(
              alignText: TextAlign.left,
              maxLines: 4,
              text:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              textStyle:
                  KTextStyles().normal(fontSize: 10, textColor: KColors.kWhite))
        ],
      ),
    );
  }
}
