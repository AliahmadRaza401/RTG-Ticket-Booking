import 'package:rtg/widgets/custom_app_bar.dart';
import 'package:rtg/widgets/widgets_imports.dart';

class AddTickets extends StatelessWidget {
  const AddTickets({super.key});

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
              heightBox(.02),
              Container(
                width: kWidth(.9),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(kWidth(.02))),
                  color: const Color(0xff1D1D1D),
                ),
                padding: EdgeInsets.only(top: kHeight(.02)),
                child: Column(
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        //Get.toNamed("/flightbooked");
                      },
                      child: const AddTicketTile(
                        title: "Flight Details",
                        img: "assets/images/addticket.png",
                      ),
                    ),
                    heightBox(.01),
                    const Divider(
                      thickness: 1,
                      color: KColors.kGrey,
                    ),
                    heightBox(.01),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        //Get.toNamed("/hotelreservation");
                      },
                      child: const AddTicketTile(
                        title: "Hotel Reservation",
                        img: "assets/images/addticket2.png",
                      ),
                    ),
                    heightBox(.01),
                    const Divider(
                      thickness: 1,
                      color: KColors.kGrey,
                    ),
                    heightBox(.01),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        //Get.toNamed("/busticket");
                      },
                      child: const AddTicketTile(
                        title: "Transport Pass",
                        img: "assets/images/addticket3.png",
                      ),
                    ),
                    heightBox(.01),
                    const Divider(
                      thickness: 1,
                      color: KColors.kGrey,
                    ),
                    heightBox(.01),
                    const AddTicketTile(
                      title: "eSim",
                      img: "assets/images/esim.png",
                    ),
                    heightBox(.02),
                    Container(
                      height: kHeight(.2),
                      width: kWidth(.9),
                      decoration: const BoxDecoration(
                        color: Color(0xff02202F),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/globe2.png",
                            height: kHeight(.1),
                          ),
                          heightBox(.02),
                          CustomText(
                              text: "Passport",
                              textStyle: KTextStyles().normal(
                                  fontSize: 22, textColor: KColors.kGrey))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AddTicketTile extends StatelessWidget {
  final String title, img;
  const AddTicketTile({
    super.key,
    required this.title,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kWidth(.8),
      child: Row(
        children: [
          Image.asset(
            img,
            height: kHeight(.035),
            color: KColors.kWhite,
          ),
          widthBox(.06),
          CustomText(
              text: title,
              textStyle:
                  KTextStyles().normal(fontSize: 16, textColor: KColors.kWhite))
        ],
      ),
    );
  }
}
