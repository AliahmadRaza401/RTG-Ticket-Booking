import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:rtg/widgets/custom_app_bar.dart';
import 'package:rtg/widgets/widgets_imports.dart';
import 'package:share_plus/share_plus.dart';
import 'package:ticket_widget/ticket_widget.dart';

class FlightTicketDetails extends StatelessWidget {
  FlightTicketDetails({super.key});
  var isFirstResult = true.obs;
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
                        return Image.asset("assets/images/ticket.png");
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
                      ? SizedBox(
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/qr.png",
                                    height: kHeight(.15),
                                  ),
                                  widthBox(.04),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                          text: "Gate",
                                          textStyle: KTextStyles().normal(
                                              fontSize: 12,
                                              textColor: KColors.kWhite)),
                                      CustomText(
                                          text: "D 12",
                                          textStyle: KTextStyles().normal(
                                              fontSize: 16,
                                              textColor: KColors.kWhite)),
                                      heightBox(.01),
                                      CustomText(
                                          text: "Seat",
                                          textStyle: KTextStyles().normal(
                                              fontSize: 12,
                                              textColor: KColors.kWhite)),
                                      CustomText(
                                          text: "11 A",
                                          textStyle: KTextStyles().normal(
                                              fontSize: 16,
                                              textColor: KColors.kWhite)),
                                      heightBox(.01),
                                      CustomText(
                                          text: "Cabin",
                                          textStyle: KTextStyles().normal(
                                              fontSize: 12,
                                              textColor: KColors.kWhite)),
                                      CustomText(
                                          text: "Economy Class",
                                          textStyle: KTextStyles().normal(
                                              fontSize: 16,
                                              textColor: KColors.kWhite)),
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                          text: "Boarding begins",
                                          textStyle: KTextStyles().normal(
                                              fontSize: 12,
                                              textColor: KColors.kWhite)),
                                      CustomText(
                                          text: "13:40",
                                          textStyle: KTextStyles().normal(
                                              fontSize: 16,
                                              textColor: KColors.kWhite)),
                                      heightBox(.01),
                                      CustomText(
                                          text: "Boarding ends",
                                          textStyle: KTextStyles().normal(
                                              fontSize: 12,
                                              textColor: KColors.kWhite)),
                                      CustomText(
                                          text: "14:40",
                                          textStyle: KTextStyles().normal(
                                              fontSize: 16,
                                              textColor: KColors.kWhite)),
                                    ],
                                  ),
                                ],
                              ),
                              heightBox(.02),
                              const DottedLine(
                                direction: Axis.horizontal,
                                alignment: WrapAlignment.center,
                                lineLength: double.infinity,
                                lineThickness: 1.0,
                                dashLength: 4.0,
                                dashColor: KColors.kWhite,
                                dashRadius: 0.0,
                                dashGapLength: 4.0,
                                dashGapColor: Colors.transparent,
                                dashGapRadius: 0.0,
                              ),
                              heightBox(.02),
                              const TicketBox(),
                            ],
                          ),
                        )
                      : Image.asset("assets/images/hotelpdf.png");
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TicketBox extends StatelessWidget {
  const TicketBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: TicketWidget(
        color: KColors.kBlack,
        margin: const EdgeInsets.only(bottom: 150),
        width: kWidth(.8),
        height: kHeight(.4),
        isCornerRounded: true,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    text: "NYC",
                    textStyle: KTextStyles()
                        .normal(fontSize: 40, textColor: KColors.kWhite)),
                Container(
                  height: kHeight(.04),
                  width: kWidth(.15),
                  decoration: BoxDecoration(
                    color: KColors.kPrimary,
                    borderRadius: BorderRadius.circular(kWidth(.1)),
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(kWidth(.015)),
                  child: Image.asset(
                    "assets/images/plane.png",
                  ),
                ),
                CustomText(
                    text: "VN",
                    textStyle: KTextStyles()
                        .normal(fontSize: 40, textColor: KColors.kWhite)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    text: "New York",
                    textStyle: KTextStyles()
                        .normal(fontSize: 12, textColor: KColors.kWhite)),
                CustomText(
                    text: "Da Nang, Vietnam",
                    textStyle: KTextStyles()
                        .normal(fontSize: 12, textColor: KColors.kWhite)),
              ],
            ),
            heightBox(.02),
            DottedLine(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              lineLength: double.infinity,
              lineThickness: 1.0,
              dashLength: 4.0,
              dashColor: KColors.kWhite.withOpacity(.5),
              dashRadius: 0.0,
              dashGapLength: 4.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
            heightBox(.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    text: "Departure date",
                    textStyle: KTextStyles().normal(
                        fontSize: 12,
                        textColor: KColors.kGrey,
                        fontWeight: FontWeight.bold)),
                CustomText(
                    text: "Time",
                    textStyle: KTextStyles().normal(
                        fontSize: 12,
                        textColor: KColors.kGrey,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    text: "Dec 11, 2023",
                    textStyle: KTextStyles()
                        .normal(fontSize: 16, textColor: KColors.kWhite)),
                CustomText(
                    text: "07:00 PM",
                    textStyle: KTextStyles()
                        .normal(fontSize: 16, textColor: KColors.kWhite)),
              ],
            ),
            heightBox(.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    text: "Class",
                    textStyle: KTextStyles().normal(
                        fontSize: 12,
                        textColor: KColors.kGrey,
                        fontWeight: FontWeight.bold)),
                CustomText(
                    text: "Seat",
                    textStyle: KTextStyles().normal(
                        fontSize: 12,
                        textColor: KColors.kGrey,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    text: "BUSINESS",
                    textStyle: KTextStyles()
                        .normal(fontSize: 16, textColor: KColors.kWhite)),
                CustomText(
                    text: "B4",
                    textStyle: KTextStyles()
                        .normal(fontSize: 16, textColor: KColors.kWhite)),
              ],
            ),
            heightBox(.04),
            DottedLine(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              lineLength: double.infinity,
              lineThickness: 1.0,
              dashLength: 4.0,
              dashColor: KColors.kWhite.withOpacity(.5),
              dashRadius: 0.0,
              dashGapLength: 4.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
            heightBox(.02),
            Image.asset(
              "assets/images/barcode.png",
              height: kHeight(.06),
            )
          ],
        ),
      ),
    );
  }
}
