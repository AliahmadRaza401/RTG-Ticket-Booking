import '../widgets/widgets_imports.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;
  final Color backgroundColor, shadowColor, backColor, textColor;
  final double elevation;
  final bool centerTitle;
  final double fontSize;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.actions,
    this.backgroundColor = KColors.noColor,
    this.shadowColor = KColors.kWhite,
    this.backColor = KColors.kWhite,
    this.textColor = KColors.kWhite,
    this.centerTitle = true,
    this.elevation = 0,
    this.fontSize = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: kWidth(.9),
        child: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: backgroundColor,
          elevation: elevation,
          shadowColor: shadowColor,
          title: CustomText(
            text: title,
            textStyle: KTextStyles().heading(
              textColor: textColor,
            ),
          ),
          centerTitle: centerTitle,
          iconTheme: IconThemeData(
            color: backColor,
          ),
          actions: actions,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
