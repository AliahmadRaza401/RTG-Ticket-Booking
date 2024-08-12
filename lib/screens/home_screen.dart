import 'package:rtg/widgets/custom_app_bar.dart';

import '../widgets/widgets_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "My Tickets", actions: [
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightBox(.04),
                CustomText(
                    text: "Flight Booking",
                    textStyle: KTextStyles().normal(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      textColor: KColors.kWhite,
                    )),
                heightBox(.02),
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/flightbooked");
                  },
                  child: AbsorbPointer(
                    absorbing: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: KColors.kWhite,
                        borderRadius: BorderRadius.circular(kWidth(.04)),
                      ),
                      padding: EdgeInsets.all(kWidth(.04)),
                      child: Column(
                        children: [
                          CustomTextField(
                              hasSuffix: false,
                              themeColor: KColors.kGrey.withOpacity(.2),
                              controller: TextEditingController(),
                              label: "From",
                              hintText: "Delhi",
                              keyboardType: TextInputType.text,
                              suffixIcon: const Icon(null),
                              prefixIcon: const Icon(
                                Icons.flight_takeoff_outlined,
                                color: KColors.kGrey,
                              )),
                          heightBox(.02),
                          CustomTextField(
                              hasSuffix: false,
                              themeColor: KColors.kGrey.withOpacity(.2),
                              controller: TextEditingController(),
                              label: "To",
                              hintText: "Delhi",
                              keyboardType: TextInputType.text,
                              suffixIcon: const Icon(null),
                              prefixIcon: const Icon(
                                Icons.flight_land_outlined,
                                color: KColors.kGrey,
                              )),
                          heightBox(.02),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomTextField(
                                  width: .4,
                                  hasSuffix: false,
                                  themeColor: KColors.kGrey.withOpacity(.2),
                                  controller: TextEditingController(),
                                  label: "Departure",
                                  hintText: "15/07/2022",
                                  keyboardType: TextInputType.text,
                                  suffixIcon: const Icon(null),
                                  prefixIcon: const Icon(
                                    Icons.calendar_month,
                                    color: KColors.kGrey,
                                  )),
                              CustomTextField(
                                  hasPrefix: false,
                                  width: .4,
                                  hasSuffix: false,
                                  themeColor: KColors.kGrey.withOpacity(.2),
                                  controller: TextEditingController(),
                                  label: "Traveller",
                                  hintText: "2",
                                  keyboardType: TextInputType.text,
                                  suffixIcon: const Icon(null),
                                  prefixIcon: const Icon(
                                    Icons.flight_land_outlined,
                                    color: KColors.kGrey,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                heightBox(.02),
                CustomText(
                    text: "Hotel Booking",
                    textStyle: KTextStyles().normal(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      textColor: KColors.kWhite,
                    )),
                heightBox(.02),
                GestureDetector(
                  onTap: () {
                    //Get.toNamed("/flightinfo");
                  },
                  child: AbsorbPointer(
                    absorbing: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: KColors.kWhite,
                        borderRadius: BorderRadius.circular(kWidth(.04)),
                      ),
                      padding: EdgeInsets.all(kWidth(.04)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              text: "Where?",
                              textStyle: KTextStyles().normal(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  textColor: KColors.kBlack)),
                          heightBox(.005),
                          CustomTextField2(
                              hasSuffix: false,
                              themeColor: KColors.kGrey.withOpacity(.2),
                              controller: TextEditingController(),
                              label: "Ex: New York",
                              hintText: "",
                              keyboardType: TextInputType.text,
                              suffixIcon: const Icon(null),
                              prefixIcon: const Icon(
                                Icons.location_on_outlined,
                                color: KColors.kGrey,
                              )),
                          heightBox(.02),
                          SizedBox(
                            width: kWidth(.565),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                    text: "Check-in",
                                    textStyle: KTextStyles().normal(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        textColor: KColors.kBlack)),
                                CustomText(
                                    text: "Check-out",
                                    textStyle: KTextStyles().normal(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        textColor: KColors.kBlack)),
                              ],
                            ),
                          ),
                          heightBox(.005),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomTextField2(
                                  hasPrefix: false,
                                  width: .4,
                                  hasSuffix: true,
                                  themeColor: KColors.kGrey.withOpacity(.2),
                                  controller: TextEditingController(),
                                  label: "DD/MM/YY",
                                  hintText: "",
                                  keyboardType: TextInputType.text,
                                  suffixIcon: const Icon(
                                    Icons.calendar_month,
                                    color: KColors.kGrey,
                                  ),
                                  prefixIcon: const Icon(null)),
                              CustomTextField2(
                                  hasPrefix: false,
                                  width: .4,
                                  hasSuffix: true,
                                  themeColor: KColors.kGrey.withOpacity(.2),
                                  controller: TextEditingController(),
                                  label: "DD/MM/YY",
                                  hintText: "",
                                  keyboardType: TextInputType.text,
                                  suffixIcon: const Icon(
                                    Icons.calendar_month,
                                    color: KColors.kGrey,
                                  ),
                                  prefixIcon: const Icon(null)),
                            ],
                          ),
                          heightBox(.02),
                          SizedBox(
                            width: kWidth(.52),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                    text: "Guests",
                                    textStyle: KTextStyles().normal(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        textColor: KColors.kBlack)),
                                CustomText(
                                    text: "Rooms",
                                    textStyle: KTextStyles().normal(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        textColor: KColors.kBlack)),
                              ],
                            ),
                          ),
                          heightBox(.005),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: kHeight(.052),
                                  width: kWidth(.4),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: KColors.kGrey.withOpacity(.2),
                                          width: 2),
                                      borderRadius:
                                          BorderRadius.circular(kWidth(.03))),
                                  padding: EdgeInsets.all(kWidth(.02)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Icon(
                                        CupertinoIcons.minus,
                                        color: KColors.kGrey,
                                      ),
                                      CustomText(
                                          text: "1",
                                          textStyle: KTextStyles().normal(
                                              fontSize: 18,
                                              textColor: KColors.kGrey)),
                                      const Icon(
                                        CupertinoIcons.add,
                                        color: KColors.kGrey,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: kHeight(.052),
                                  width: kWidth(.4),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: KColors.kGrey.withOpacity(.2),
                                          width: 2),
                                      borderRadius:
                                          BorderRadius.circular(kWidth(.03))),
                                  padding: EdgeInsets.all(kWidth(.02)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Icon(
                                        CupertinoIcons.minus,
                                        color: KColors.kGrey,
                                      ),
                                      CustomText(
                                          text: "1",
                                          textStyle: KTextStyles().normal(
                                              fontSize: 18,
                                              textColor: KColors.kGrey)),
                                      const Icon(
                                        CupertinoIcons.add,
                                        color: KColors.kGrey,
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          heightBox(.02),
                          Row(
                            children: [
                              Checkbox(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                side: const BorderSide(color: KColors.kPrimary),
                                checkColor: KColors.kPrimary,
                                activeColor: KColors.kPrimary,
                                hoverColor: KColors.kPrimary,
                                fillColor: const WidgetStatePropertyAll(
                                    KColors.kWhite),
                                value: false,
                                onChanged: (value) {},
                              ),
                              widthBox(.02),
                              CustomText(
                                  text: "Lorem ipsum lorem ipsum",
                                  textStyle: KTextStyles()
                                      .normal(textColor: KColors.kGrey)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                heightBox(.02),
                Center(
                  child: PrimaryButton(
                    text: "Check Availability",
                    function: () {
                      Get.toNamed("/calendar");
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
