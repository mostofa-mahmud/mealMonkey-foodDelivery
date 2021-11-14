part of widgets;

class SplashLogo extends StatefulWidget {
  const SplashLogo({Key? key}) : super(key: key);

  @override
  _SplashLogoState createState() => _SplashLogoState();
}

class _SplashLogoState extends State<SplashLogo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/logo.png', fit: BoxFit.fill, width: 300.w,),
        SizedBox(height: 50.h,),

        Text.rich(
          TextSpan(text: 'Meal ',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: mainColor
              ),
              children: [
                TextSpan(
                    text: 'Monkey',
                    style: TextStyle(color: primaryFontColor)
                )
              ]
          ),
        ),
        SizedBox(height: 60.h,),

        Text('Food Delivery',
            style: Theme.of(context).textTheme.bodyText1!.copyWith( color: secondaryFontColor, letterSpacing: 10.w)
        )




      ],
    );
  }
}
