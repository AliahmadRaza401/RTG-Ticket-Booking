import 'package:rtg/screens/explore.dart';
import 'package:rtg/widgets/custom_app_bar.dart';
import 'package:rtg/widgets/widgets_imports.dart';

class History extends StatelessWidget {
  History({super.key});
  final RxnBool isSelected = RxnBool(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "", actions: []),
      backgroundColor: KColors.kBlack,
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Divider(
                thickness: 1,
                color: KColors.kGrey,
              ),
              heightBox(.02),
              SizedBox(
                child: Column(
                  children: [
                    Container(
                      height: kHeight(.04),
                      width: context.width,
                      color: KColors.kPrimary,
                      alignment: Alignment.center,
                      child: CustomText(
                          text: "Hotel Booking",
                          textStyle: KTextStyles().normal(
                              fontSize: 20,
                              textColor: KColors.kWhite,
                              fontWeight: FontWeight.bold)),
                    ),
                    heightBox(.02),
                    SizedBox(
                      width: kWidth(.8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/hotelpic.png",
                                height: kHeight(.1),
                                width: kWidth(.3),
                                fit: BoxFit.fill,
                              ),
                              widthBox(.04),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: "AYANA Resort",
                                      textStyle: KTextStyles().normal(
                                          textColor: KColors.kWhite,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700)),
                                  heightBox(.005),
                                  CustomText(
                                      text: "Bali, Indonesia",
                                      textStyle: KTextStyles().normal(
                                        textColor: KColors.kWhite,
                                        fontSize: 15,
                                      )),
                                ],
                              )
                            ],
                          ),
                          heightBox(.02),
                          const TextTile(
                            title: "Booking Date",
                            subttile: "1-Oct-2023",
                          ),
                          heightBox(.01),
                          const TextTile(
                            title: "Check-in",
                            subttile: "24-Oct-2023",
                          ),
                          heightBox(.01),
                          const TextTile(
                            title: "Check-out",
                            subttile: "26-Oct-2023",
                          ),
                          heightBox(.01),
                          const TextTile(
                            title: "Chcek-out",
                            subttile: "3",
                          ),
                          heightBox(.01),
                          const TextTile(
                            title: "Room(s)",
                            subttile: "1",
                          ),
                          heightBox(.01),
                        ],
                      ),
                    ),
                    heightBox(.02),
                    Container(
                      height: kHeight(.04),
                      width: context.width,
                      color: KColors.kPrimary,
                      alignment: Alignment.center,
                      child: CustomText(
                          text: "Flight Booking",
                          textStyle: KTextStyles().normal(
                              fontSize: 20,
                              textColor: KColors.kWhite,
                              fontWeight: FontWeight.bold)),
                    ),
                    heightBox(.02),
                    SizedBox(
                      width: kWidth(.8),
                      child: Column(
                        children: [
                          const TextTile(
                            title: "Booking Date",
                            subttile: "26-Oct-2023",
                          ),
                          heightBox(.01),
                          const TextTile(
                            title: "Total Tickets",
                            subttile: "3",
                          ),
                          heightBox(.01),
                          const TextTile(
                            title: "Tax",
                            subttile: "\$30",
                          ),
                        ],
                      ),
                    ),
                    heightBox(.02),
                    Container(
                      height: kHeight(.04),
                      width: context.width,
                      color: KColors.kPrimary,
                      alignment: Alignment.center,
                      child: CustomText(
                          text: "Attractions Booking",
                          textStyle: KTextStyles().normal(
                              fontSize: 20,
                              textColor: KColors.kWhite,
                              fontWeight: FontWeight.bold)),
                    ),
                    heightBox(.02),
                    SizedBox(
                      width: kWidth(.8),
                      child: Column(
                        children: [
                          const TextTile(
                            title: "Disney Land Tickets",
                            subttile: "4",
                          ),
                          heightBox(.01),
                          const TextTile(
                            title: "Football Game Tickets",
                            subttile: "3",
                          ),
                          heightBox(.01),
                          const TextTile(
                            title: "Tax",
                            subttile: "\$30",
                          ),
                        ],
                      ),
                    ),
                    heightBox(.02),
                    const Divider(
                      thickness: 1,
                      color: KColors.kWhite,
                    ),
                    heightBox(.02),
                    SizedBox(
                      width: kWidth(.8),
                      child: Column(
                        children: [
                          const TextTile(
                            title: "Tax",
                            subttile: "\$30",
                          ),
                          heightBox(.01),
                          const TextTile2(
                              title: "Sub Total", subttile: "\$2000"),
                          heightBox(.01),
                          const TextTile2(
                              title: "price Paid", subttile: "\$2030"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              heightBox(.04),
              PrimaryButton(
                text: "Go back to home",
                function: () {},
              ),
              heightBox(.1),
            ],
          ),
        ),
      ),
    );
  }
}

class TextTile extends StatelessWidget {
  final String title, subttile;
  const TextTile({
    super.key,
    required this.title,
    required this.subttile,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
            text: title,
            textStyle: KTextStyles().normal(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                textColor: KColors.kWhite)),
        CustomText(
            text: subttile,
            textStyle: KTextStyles().normal(
              textColor: KColors.kGrey.withOpacity(.5),
              fontSize: 16,
            )),
      ],
    );
  }
}

class TextTile2 extends StatelessWidget {
  final String title, subttile;
  const TextTile2({
    super.key,
    required this.title,
    required this.subttile,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
            text: title,
            textStyle: KTextStyles().normal(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                textColor: KColors.kPrimary)),
        CustomText(
            text: subttile,
            textStyle: KTextStyles().normal(
              fontWeight: FontWeight.w700,
              textColor: KColors.kPrimary,
              fontSize: 22,
            )),
      ],
    );
  }
}
