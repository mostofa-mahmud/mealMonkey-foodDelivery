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
    Timer(const Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, '/intro');
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
          children: [
            Image.asset('assets/splash101.jpg', fit: BoxFit.fill,),

            const SplashLogo(),

          ]

      ),
    );
  }
}
