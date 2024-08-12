import 'package:rtg/widgets/custom_app_bar.dart';
import 'package:rtg/widgets/widgets_imports.dart';
import 'package:share_plus/share_plus.dart';

class HotelReservationDetails extends StatelessWidget {
  HotelReservationDetails({super.key});
  final isFirstResult = true.obs;
  void toggleResult() {
    isFirstResult.value = !isFirstResult.value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Flight Details", actions: [
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
      backgroundColor: const Color(0xff1D1D1D),
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: SingleChildScrollView(
            child: Column(
              children: [
                heightBox(.02),
                SizedBox(
                  height: kHeight(.25),
                  width: context.width,
                  child: ListView.separated(
                      padding: EdgeInsets.all(0),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Image.asset(
                            "assets/images/hotelreservation.png");
                      },
                      separatorBuilder: (context, index) => widthBox(.02),
                      itemCount: 3),
                ),
                heightBox(.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        toggleResult();
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
                heightBox(.04),
                Obx(() {
                  return isFirstResult.value == true
                      ? Image.asset("assets/images/hotelpdf.png")
                      : Image.asset("assets/images/hotelinfopic.png");
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
