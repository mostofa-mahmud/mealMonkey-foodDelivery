part of pages;


class Splash_srcn extends StatefulWidget {
  const Splash_srcn({Key? key}) : super(key: key);

  @override
  _Splash_srcnState createState() => _Splash_srcnState();
}

class _Splash_srcnState extends State<Splash_srcn> {


  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 5), (){

    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
          children: [
            Image.asset('assets/splash101.jpg', fit: BoxFit.fill,),


            Column(
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
            )
          ]

      ),
    );
  }
}
