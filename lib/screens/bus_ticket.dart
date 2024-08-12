import 'package:rtg/widgets/custom_app_bar.dart';
import 'package:rtg/widgets/widgets_imports.dart';
import 'package:share_plus/share_plus.dart';

class BusTicket extends StatelessWidget {
  const BusTicket({super.key});

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
              heightBox(.02),
              Image.asset("assets/images/busticket.png"),
              heightBox(.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: kHeight(.05),
                    width: kWidth(.28),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kWidth(.1)),
                        color: KColors.noColor,
                        border: Border.all(color: KColors.kWhite)),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/pdf.png",
                          height: kHeight(.03),
                        ),
                        widthBox(.02),
                        CustomText(
                            text: "Ticket Info",
                            textStyle: KTextStyles().normal(
                                fontSize: 10, textColor: KColors.kWhite))
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await Share.share('share');
                    },
                    child: Container(
                      height: kHeight(.05),
                      width: kWidth(.28),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kWidth(.1)),
                          color: KColors.noColor,
                          border: Border.all(color: KColors.kWhite)),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/share.png",
                            height: kHeight(.03),
                          ),
                          widthBox(.02),
                          CustomText(
                              text: "Share Ticket",
                              textStyle: KTextStyles().normal(
                                  fontSize: 10, textColor: KColors.kWhite))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: kHeight(.05),
                    width: kWidth(.28),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kWidth(.1)),
                        color: KColors.noColor,
                        border: Border.all(color: KColors.kWhite)),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/globe.png",
                          height: kHeight(.03),
                        ),
                        widthBox(.02),
                        CustomText(
                            text: "Site Link",
                            textStyle: KTextStyles().normal(
                                fontSize: 10, textColor: KColors.kWhite))
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
