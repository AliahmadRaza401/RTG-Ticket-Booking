import 'package:rtg/widgets/custom_app_bar.dart';
import 'package:rtg/widgets/widgets_imports.dart';

class Restaurant extends StatelessWidget {
  const Restaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Restaurant", actions: [
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
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: Column(
          children: [
            Image.asset("assets/images/restaurant.png"),
            Padding(
              padding: EdgeInsets.all(kWidth(.04)),
              child: SizedBox(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(kWidth(.02)),
                          decoration: BoxDecoration(
                              color: KColors.kPrimary.withOpacity(.2),
                              borderRadius: BorderRadius.circular(kWidth(.01))),
                          child: CustomText(
                              text: "Popular",
                              textStyle: KTextStyles().normal(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  textColor: KColors.kWhite)),
                        ),
                        const Spacer(),
                        CircleAvatar(
                          backgroundColor: KColors.kPrimary,
                          child: Icon(
                            Icons.call,
                            color: KColors.kWhite,
                            size: kHeight(.025),
                          ),
                        ),
                        widthBox(.02),
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundColor: KColors.kPrimary,
                            child: Icon(
                              Icons.location_on,
                              color: KColors.kWhite,
                              size: kHeight(.025),
                            ),
                          ),
                        ),
                        widthBox(.02),
                        CircleAvatar(
                          backgroundColor: KColors.kPrimary,
                          child: Icon(
                            Icons.mail,
                            color: KColors.kWhite,
                            size: kHeight(.025),
                          ),
                        ),
                      ],
                    ),
                    heightBox(.02),
                    Row(
                      children: [
                        CustomText(
                            alignText: TextAlign.left,
                            maxLines: 2,
                            text: "Burger King",
                            textStyle: KTextStyles().normal(
                                fontSize: 27,
                                fontWeight: FontWeight.w700,
                                textColor: KColors.kWhite)),
                        const Spacer(),
                        PrimaryButton(
                          color: KColors.kBlack,
                          width: .25,
                          text: "View Menu",
                          function: () {},
                        ),
                      ],
                    ),
                    heightBox(.02),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/star.png",
                          height: kHeight(.02),
                        ),
                        widthBox(.015),
                        CustomText(
                            text: "4.8 Rating",
                            textStyle: KTextStyles().normal(
                                fontSize: 12,
                                textColor: KColors.kWhite,
                                fontWeight: FontWeight.w700)),
                        widthBox(.04),
                        Image.asset(
                          "assets/images/shopping-bag.png",
                          height: kHeight(.02),
                        ),
                        widthBox(.015),
                        CustomText(
                            text: "7000+ Orders",
                            textStyle: KTextStyles().normal(
                                fontSize: 12,
                                textColor: KColors.kWhite,
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                    heightBox(.02),
                    CustomText(
                        alignText: TextAlign.left,
                        maxLines: 6,
                        text:
                            "Lorem Ipsu is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",
                        textStyle: KTextStyles()
                            .normal(fontSize: 12, textColor: KColors.kWhite)),
                    heightBox(.06),
                    PrimaryButton(
                      text: "Order Now",
                      function: () {
                        Get.toNamed("/attraction");
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
