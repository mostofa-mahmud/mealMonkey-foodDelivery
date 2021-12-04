part of pages;

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 60.w),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [

              SizedBox(height: 120.h,),
              Text(
                "Login",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: primaryFontColor,
                ),
              ),

              SizedBox(height: 40.h,),

              Text("Add your details to Login",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: secondaryFontColor,
                ),
              ),

              SizedBox(height: 120.h,),


              CustomTextFormField(
                labelText: 'Your Email',
              ),

              SizedBox(height: 60.h,),


              CustomTextFormField(
                labelText: 'Password',
              ),

              SizedBox(height: 60.h,),



              ElevatedButton(
                  onPressed: (){},
                  child: Text("Login")
              ),


              SizedBox(height: 60.h,),


              Text('Forgot your password?',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: secondaryFontColor,
                ),
              ),
              Text('Or Login with',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: secondaryFontColor,
                ),
              ),


              SizedBox(height: 60.h,),

              ElevatedButton.icon(
                onPressed: (){

                },
                icon: Icon(FontAwesomeIcons.facebookF),
                label: Text("Login with facebook"),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff3b5998),
                ),
              ),


              SizedBox(height: 40.h,),

              ElevatedButton.icon(
                onPressed: (){

                },
                icon: Icon(FontAwesomeIcons.googlePlusG),
                label: Text("Login with Google"),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffdb4a39),
                ),
              ),


              Expanded(child: SizedBox.shrink()),
              Text.rich(
                  TextSpan(
                      text: 'Don\'t have an account?',
                      style: Theme.of(context).textTheme.bodyText2,
                      children: [
                        TextSpan(text: ' Sign up',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                      ]
                  )
              ),
              SizedBox(height: 50.h,),


            ],
          ),
        ),
      ),
    );
  }
}