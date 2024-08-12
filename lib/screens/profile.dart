import 'package:rtg/widgets/custom_app_bar.dart';
import 'package:rtg/widgets/widgets_imports.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.kBlack,
      appBar: CustomAppBar(title: "Profile", actions: [
        GestureDetector(
          onTap: () {
            Get.toNamed("/editprofile");
          },
          child: Image.asset(
            "assets/images/Edit.png",
            height: kHeight(.025),
          ),
        ),
      ]),
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: Column(
            children: [
              heightBox(.04),
              CircleAvatar(
                  radius: kHeight(.06),
                  backgroundColor: const Color(0xffFFEADF),
                  foregroundImage: const AssetImage(
                    "assets/images/modal.png",
                  )),
              heightBox(.02),
              CustomText(
                  text: "Chris Hemsworth",
                  textStyle: KTextStyles()
                      .normal(fontSize: 24, textColor: KColors.kWhite)),
              heightBox(.04),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff1D1D1D),
                  borderRadius: BorderRadius.circular(kWidth(.02)),
                ),
                padding: EdgeInsets.symmetric(vertical: kHeight(.02)),
                child: Column(
                  children: [
                    const ProfileTile(
                        title: "Profile", img: "assets/images/profile1.png"),
                    heightBox(.01),
                    const Divider(
                      thickness: 1,
                      color: KColors.kGrey,
                    ),
                    heightBox(.01),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      child: const ProfileTile(
                          title: "Bookmarks",
                          img: "assets/images/profile2.png"),
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
                        Get.toNamed("/history");
                      },
                      child: const ProfileTile(
                          title: "Previous Trips",
                          img: "assets/images/profile3.png"),
                    ),
                    heightBox(.01),
                    const Divider(
                      thickness: 1,
                      color: KColors.kGrey,
                    ),
                    heightBox(.01),
                    const ProfileTile(
                        title: "Settings", img: "assets/images/profile4.png"),
                    heightBox(.01),
                    const Divider(
                      thickness: 1,
                      color: KColors.kGrey,
                    ),
                    heightBox(.01),
                    const ProfileTile(
                        title: "Version", img: "assets/images/profile5.png"),
                    heightBox(.01),
                    const Divider(
                      thickness: 1,
                      color: KColors.kGrey,
                    ),
                    heightBox(.01),
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

class ProfileTile extends StatelessWidget {
  final String title, img;
  const ProfileTile({
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
            height: kHeight(.03),
            color: KColors.kWhite,
          ),
          widthBox(.06),
          CustomText(
              text: title,
              textStyle: KTextStyles()
                  .normal(fontSize: 16, textColor: KColors.kWhite)),
          const Spacer(),
          const Icon(
            CupertinoIcons.chevron_right,
            color: KColors.kWhite,
          )
        ],
      ),
    );
  }
}
