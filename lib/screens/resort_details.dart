import 'package:rtg/widgets/custom_app_bar.dart';
import 'package:rtg/widgets/widgets_imports.dart';

class ResortDetails extends StatelessWidget {
  const ResortDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Details", actions: []),
      backgroundColor: KColors.kBlack,
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: Column(
          children: [
            Image.asset("assets/images/resort.png"),
            heightBox(.01),
            SizedBox(
              width: kWidth(.9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(
                          text: "AYANA Resort",
                          textStyle: KTextStyles()
                              .normal(fontSize: 16, textColor: KColors.kWhite)),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor: KColors.kPrimary,
                        child: Image.asset(
                          "assets/images/navigation.png",
                          height: kHeight(.02),
                        ),
                      )
                    ],
                  ),
                  heightBox(.01),
                  Row(
                    children: [
                      Container(
                        height: kHeight(.04),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kWidth(.02)),
                            color: KColors.kPrimary.withOpacity(.2)),
                        padding: EdgeInsets.all(kWidth(.02)),
                        alignment: Alignment.center,
                        child: CustomText(
                            text: "10% Off",
                            textStyle: KTextStyles().normal(
                                fontSize: 10, textColor: KColors.kPrimary)),
                      ),
                      widthBox(.02),
                      Container(
                        height: kHeight(.04),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kWidth(.02)),
                            color: KColors.kPrimary.withOpacity(.2)),
                        padding: EdgeInsets.all(kWidth(.02)),
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: kHeight(.015),
                            ),
                            widthBox(.01),
                            CustomText(
                                text: "4.5 (120 Reviews)",
                                textStyle: KTextStyles().normal(
                                    fontSize: 12, textColor: KColors.kPrimary)),
                          ],
                        ),
                      )
                    ],
                  ),
                  heightBox(.01),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: KColors.kWhite,
                      ),
                      widthBox(.01),
                      CustomText(
                          text: "Karang Mas Estate, Jimbaran, Bali, Indonesia",
                          textStyle: KTextStyles()
                              .normal(fontSize: 10, textColor: KColors.kGrey)),
                    ],
                  ),
                  heightBox(.02),
                  CustomText(
                      text: "Description",
                      textStyle: KTextStyles()
                          .normal(fontSize: 16, textColor: KColors.kWhite)),
                  heightBox(.01),
                  const CustomRichText(
                      normalFontSize: 10,
                      focusedFontSize: 10,
                      maxLines: 3,
                      normalColor: KColors.kGrey,
                      focusedColor: Colors.yellow,
                      normalText:
                          "Nestled in the lush tropical paradise of Jimbaran, Bali, AYANA Resort and Spa offers an enchanting escape for travelers seeking luxury, relaxation, and breathtaking ocean views...",
                      focusedText: "Read more"),
                  heightBox(.02),
                  CustomText(
                      text: "Contact Info",
                      textStyle: KTextStyles()
                          .normal(fontSize: 16, textColor: KColors.kWhite)),
                  heightBox(.02),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: KColors.kPrimary.withOpacity(.5),
                        child: const Icon(Icons.person),
                      ),
                      widthBox(.02),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                              text: "John Mail",
                              textStyle: KTextStyles().normal(
                                fontSize: 15,
                                textColor: KColors.kWhite,
                              )),
                          heightBox(.005),
                          CustomText(
                              text: "Receptionist",
                              textStyle: KTextStyles().normal(
                                fontSize: 10,
                                textColor: KColors.kGrey,
                              )),
                        ],
                      ),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor: KColors.kPrimary.withOpacity(.5),
                        child: const Icon(Icons.call),
                      ),
                      widthBox(.02),
                      CircleAvatar(
                        backgroundColor: KColors.kPrimary.withOpacity(.5),
                        child: const Icon(Icons.mail),
                      ),
                    ],
                  )
                ],
              ),
            ),
            heightBox(.02),
            Container(
              height: kHeight(.1),
              width: context.width,
              color: KColors.kSecondary.withOpacity(.3),
              padding: EdgeInsets.all(kWidth(.04)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomRichText(
                      focusPosition: FocusPosition.start,
                      normalFontSize: 16,
                      focusedFontSize: 16,
                      normalColor: KColors.kWhite,
                      focusedColor: KColors.kWhite,
                      normalText: "/night",
                      focusedText: "\$350 USD "),
                  widthBox(.04),
                  SecondaryButton(
                    fontsize: 22,
                    width: .45,
                    color: KColors.kSecondary,
                    text: "Book Now",
                    function: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
