part of widgets;

class LoginRegisterHeader extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool centerText;

  const LoginRegisterHeader(
      {
        required this.title,
        required this.subTitle,
        this.centerText = false,
        Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


        SizedBox(height: verticalPadding * 2.5),
        Text(
          title,
          style: Theme.of(context).textTheme.headline4!.copyWith(
            color: primaryFontColor,
          ),
          textAlign: centerText ? TextAlign.center : null,
        ),

        SizedBox(height: verticalPadding /2,),

        Text(subTitle,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: secondaryFontColor,
          ),
          textAlign: centerText ? TextAlign.center : null,
        ),

        SizedBox(height: verticalPadding * 3,),



      ],
    );
  }
}