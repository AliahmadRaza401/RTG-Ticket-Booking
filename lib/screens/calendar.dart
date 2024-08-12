import 'package:rtg/widgets/custom_app_bar.dart';
import 'package:rtg/widgets/widgets_imports.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', actions: [
        Icon(
          Icons.check,
          color: KColors.kWhite,
        )
      ]),
      backgroundColor: KColors.kBlack,
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/decor.png",
                    height: kHeight(.02),
                  ),
                  widthBox(.04),
                  CustomText(
                      text: "Available Date",
                      textStyle: KTextStyles().normal(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          textColor: KColors.kWhite))
                ],
              ),
              heightBox(.01),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff00A59A),
                      borderRadius: BorderRadius.circular(kWidth(.02)),
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: kWidth(.02), horizontal: kWidth(.04)),
                    child: CustomText(
                        text: "\$",
                        textStyle:
                            KTextStyles().normal(textColor: KColors.kWhite)),
                  ),
                  widthBox(.02),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFF9400),
                      borderRadius: BorderRadius.circular(kWidth(.02)),
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: kWidth(.02), horizontal: kWidth(.04)),
                    child: CustomText(
                        text: "\$\$",
                        textStyle:
                            KTextStyles().normal(textColor: KColors.kWhite)),
                  ),
                  widthBox(.02),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffD1435B),
                      borderRadius: BorderRadius.circular(kWidth(.02)),
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: kWidth(.02), horizontal: kWidth(.04)),
                    child: CustomText(
                        text: "\$\$\$",
                        textStyle:
                            KTextStyles().normal(textColor: KColors.kWhite)),
                  )
                ],
              ),
              heightBox(.02),
              SfDateRangePicker(
                view: DateRangePickerView.month,
                todayHighlightColor: KColors.kPrimary,
                yearCellStyle: DateRangePickerYearCellStyle(
                    todayTextStyle: TextStyle(color: KColors.kPrimary),
                    leadingDatesTextStyle: TextStyle(color: KColors.kWhite),
                    textStyle: TextStyle(color: KColors.kWhite)),
                monthCellStyle: DateRangePickerMonthCellStyle(
                    todayTextStyle: TextStyle(color: KColors.kPrimary),
                    disabledDatesTextStyle: TextStyle(color: KColors.kWhite),
                    selectionColor: KColors.kWhite,
                    weekendTextStyle: TextStyle(color: KColors.kWhite),
                    specialDatesDecoration: BoxDecoration(),
                    textStyle: TextStyle(color: KColors.kWhite)),
                monthViewSettings: DateRangePickerMonthViewSettings(
                    weekNumberStyle: DateRangePickerWeekNumberStyle()),
                selectionTextStyle: TextStyle(color: KColors.kWhite),
                selectionColor: KColors.kPrimary,
                backgroundColor: KColors.kBlack,
                headerStyle: const DateRangePickerHeaderStyle(
                    textStyle: TextStyle(color: KColors.kWhite),
                    backgroundColor: KColors.kBlack),
              ),
              heightBox(.02),
              Padding(
                padding: EdgeInsets.only(left: kWidth(.06)),
                child: CustomText(
                    text: "Free Slots",
                    textStyle: KTextStyles()
                        .normal(textColor: KColors.kWhite, fontSize: 16)),
              ),
              heightBox(.02),
              CalendarSlotTile(
                color: KColors.kPrimary,
                tcolor: KColors.kWhite,
              ),
              heightBox(.02),
              CalendarSlotTile(),
              heightBox(.02),
              CalendarSlotTile(),
              heightBox(.04),
              Center(
                child: PrimaryButton(
                  text: "Confirm",
                  function: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CalendarSlotTile extends StatelessWidget {
  final Color color, tcolor;
  const CalendarSlotTile({
    super.key,
    this.color = KColors.kWhite,
    this.tcolor = KColors.kBlack,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: kHeight(.006),
          backgroundColor: KColors.kGreen,
        ),
        Spacer(),
        Container(
          height: kHeight(.06),
          width: kWidth(.83),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(kWidth(.02))),
          padding: EdgeInsets.symmetric(horizontal: kWidth(.04)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                  text: "Available",
                  textStyle:
                      KTextStyles().normal(textColor: tcolor, fontSize: 14)),
              CustomText(
                  text: "10:00 AM - 12:00 PM",
                  textStyle:
                      KTextStyles().normal(textColor: tcolor, fontSize: 12)),
            ],
          ),
        )
      ],
    );
  }
}
