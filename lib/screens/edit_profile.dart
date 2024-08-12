import 'package:rtg/widgets/custom_app_bar.dart';
import 'package:rtg/widgets/widgets_imports.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Edit Profile", actions: [
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: CustomText(
              text: "Done",
              textStyle: KTextStyles().normal(textColor: KColors.kPrimary)),
        )
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
                Center(
                  child: SizedBox(
                    child: Column(
                      children: [
                        CircleAvatar(
                            radius: kHeight(.06),
                            backgroundColor: const Color(0xffFFEADF),
                            foregroundImage: const AssetImage(
                              "assets/images/modal.png",
                            )),
                        heightBox(.02),
                        CustomText(
                            text: "Chris Hemsworth",
                            textStyle: KTextStyles().normal(
                                fontSize: 24, textColor: KColors.kWhite)),
                        CustomText(
                            text: "Change Profile Picture",
                            textStyle: KTextStyles().normal(
                                fontSize: 16, textColor: KColors.kPrimary)),
                      ],
                    ),
                  ),
                ),
                heightBox(.02),
                CustomText(
                    text: "First Name",
                    textStyle: KTextStyles()
                        .normal(fontSize: 18, textColor: KColors.kWhite)),
                heightBox(.01),
                ProfileTextField(
                    lable: "Chris", controller: TextEditingController()),
                heightBox(.02),
                CustomText(
                    text: "Last Name",
                    textStyle: KTextStyles()
                        .normal(fontSize: 18, textColor: KColors.kWhite)),
                heightBox(.01),
                ProfileTextField(
                    lable: "Hmesworth", controller: TextEditingController()),
                heightBox(.02),
                CustomText(
                    text: "Location",
                    textStyle: KTextStyles()
                        .normal(fontSize: 18, textColor: KColors.kWhite)),
                heightBox(.01),
                ProfileTextField(
                    lable: "Sylhet Bangladesh",
                    controller: TextEditingController()),
                heightBox(.02),
                CustomText(
                    text: "Mobile Number",
                    textStyle: KTextStyles()
                        .normal(fontSize: 18, textColor: KColors.kWhite)),
                heightBox(.01),
                ProfileTextField(
                    lable: "01758-000666", controller: TextEditingController()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileTextField extends StatelessWidget {
  final String lable;
  final Icon prefix;
  final TextEditingController controller;
  const ProfileTextField(
      {super.key,
      required this.lable,
      required this.controller,
      this.prefix = const Icon(null)});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff1D1D1D),
        borderRadius: BorderRadius.circular(kWidth(.04)),
      ),
      padding: EdgeInsets.symmetric(horizontal: kWidth(.03)),
      child: TextField(
        controller: controller,
        cursorColor: KColors.kWhite,
        style: const TextStyle(color: KColors.kWhite),
        decoration: InputDecoration(
            prefix: prefix,
            suffixIcon: const Icon(
              Icons.check,
              color: KColors.kPrimary,
            ),
            contentPadding: EdgeInsets.only(bottom: kHeight(.02)),
            border: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: lable,
            labelStyle: const TextStyle(color: KColors.kWhite)),
      ),
    );
  }
}
