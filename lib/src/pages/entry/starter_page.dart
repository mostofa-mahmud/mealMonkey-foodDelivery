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

                    },
                    style: ElevatedButton.styleFrom(
                      primary: mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                        padding: EdgeInsets.all(15),
                        minimumSize: const Size(double.infinity, 50)
                    ),

                    child: Text('Login')
                ),


                SizedBox(height: 50.h,),


                OutlinedButton(
                    onPressed: (){

                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                        side: BorderSide(color: mainColor),
                        padding: EdgeInsets.all(15),
                        minimumSize: const Size(double.infinity, 50)
                    ),

                    child: Text('Create an account', style: TextStyle(color: mainColor),)
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
}
