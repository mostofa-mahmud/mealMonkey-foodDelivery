part of pages;


class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
          children: [
            Image.asset('assets/splash101.jpg', fit: BoxFit.fill,),


            Column(
              children: [
                Image.asset('assets/logo.png', fit: BoxFit.fill, width: 300.w,),
                
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
                Text('Food Delivery',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith( color: secondaryFontColor, letterSpacing: 10.w)
                )




              ],
            )
          ]

      ),
    );
  }
}
