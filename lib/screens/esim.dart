import 'package:rtg/widgets/custom_app_bar.dart';
import 'package:rtg/widgets/widgets_imports.dart';

class Esim extends StatelessWidget {
  const Esim({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: "E-sim", actions: [
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
          const Icon(
            Icons.search,
            color: KColors.kPrimary,
          ),
        ]),
        backgroundColor: KColors.kBlack,
        body: Center(
          child: SizedBox(
            height: context.height,
            width: kWidth(.9),
            child: Column(
              children: [
                heightBox(.02),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff1D1D1D),
                    borderRadius: BorderRadius.circular(kWidth(.02)),
                  ),
                  padding: EdgeInsets.all(kWidth(.04)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/Flag_of_Romania.png",
                            height: kHeight(.04),
                          ),
                          widthBox(.02),
                          CustomText(
                              text: "30GB - 30 Days",
                              textStyle: KTextStyles().normal(
                                  fontSize: 20, textColor: KColors.kWhite)),
                          const Spacer(),
                          const Icon(
                            Icons.more_vert_outlined,
                            color: KColors.kWhite,
                          )
                        ],
                      ),
                      heightBox(.01),
                      CustomText(
                          text: "Provider Name: Partner.Ltd",
                          textStyle: KTextStyles()
                              .normal(fontSize: 16, textColor: KColors.kGrey)),
                      heightBox(.02),
                      Padding(
                        padding: EdgeInsets.only(right: kWidth(.3)),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: CustomText(
                              text: "2.5GB",
                              textStyle: KTextStyles()
                                  .normal(textColor: KColors.kPrimary)),
                        ),
                      ),
                      heightBox(.01),
                      Image.asset(
                        "assets/images/Line.png",
                        width: kWidth(.6),
                      ),
                      heightBox(.04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/globe.png",
                                height: kHeight(.04),
                              ),
                              heightBox(.005),
                              CustomText(
                                  text: "Coverage",
                                  textStyle: KTextStyles()
                                      .normal(textColor: KColors.kGrey)),
                              heightBox(.005),
                              CustomText(
                                  text: "RO",
                                  textStyle: KTextStyles()
                                      .normal(textColor: KColors.kWhite)),
                            ],
                          ),
                          widthBox(.02),
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/data.png",
                                height: kHeight(.04),
                              ),
                              heightBox(.005),
                              CustomText(
                                  text: "Data",
                                  textStyle: KTextStyles()
                                      .normal(textColor: KColors.kGrey)),
                              heightBox(.005),
                              CustomText(
                                  text: "30 GB",
                                  textStyle: KTextStyles()
                                      .normal(textColor: KColors.kWhite)),
                            ],
                          ),
                          widthBox(.02),
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/vec.png",
                                height: kHeight(.04),
                              ),
                              heightBox(.005),
                              CustomText(
                                  text: "Validity",
                                  textStyle: KTextStyles()
                                      .normal(textColor: KColors.kGrey)),
                              heightBox(.005),
                              CustomText(
                                  text: "30 Days",
                                  textStyle: KTextStyles()
                                      .normal(textColor: KColors.kWhite)),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                heightBox(.02),
                Stack(
                  children: [
                    Image.asset("assets/images/dotted.png"),
                    Padding(
                      padding: EdgeInsets.only(top: kHeight(.08)),
                      child: Center(
                        child: CircleAvatar(
                          radius: kHeight(.04),
                          backgroundColor: const Color(0xff1D1D1D),
                          child: Icon(
                            Icons.add,
                            color: KColors.kPrimary,
                            size: kHeight(.06),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
