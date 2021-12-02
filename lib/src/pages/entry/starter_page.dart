part of pages;

class StarterPage extends StatefulWidget {
  const StarterPage({Key? key}) : super(key: key);

  @override
  _StarterPageState createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [

          StarterPainter(),


          SplashLogo(),



          Padding(
            padding: EdgeInsets.all(60.w),


            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, kRouteLogin);
                    },

                    child: Text('Login')
                ),


                SizedBox(height: 50.h,),


                OutlinedButton(
                    onPressed: (){

                    },

                    child: Text('Create an account')
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
}
