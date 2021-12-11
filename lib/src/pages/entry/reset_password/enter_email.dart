part of pages;

class EnterEmailPage extends StatelessWidget {
  const EnterEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: BackButton(
            color: Colors.black,
          ),
        ),

        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [

                LoginRegisterHeader(
                    centerText: true,
                    title: 'Reset Password',
                    subTitle: 'Please check your email to receive \nOtp to create new password via Email'
                ),

                TextFormField(
                  style: TextStyle(color: primaryFontColor),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    isCollapsed: true,
                  ),
                ),

                SizedBox(height: verticalPadding * 2,),



                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> EnterOtpPage()));
                    },
                    child: Text("Send")
                ),

              ],
            ),
          ),
        )
    );
  }
}