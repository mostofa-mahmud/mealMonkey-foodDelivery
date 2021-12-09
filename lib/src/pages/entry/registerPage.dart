part of pages;

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [

              LoginRegisterHeader(title: 'Sign Up', subTitle: 'Add details to Log Up'),

              TextFormField(
                style: TextStyle(color: primaryFontColor),
                decoration: InputDecoration(
                  labelText: 'Name',
                  isCollapsed: true,
                ),
              ),



              SizedBox(height: 40.h,),

              TextFormField(
                style: TextStyle(color: primaryFontColor),
                decoration: InputDecoration(
                  labelText: 'Email',
                  isCollapsed: true,
                ),
              ),


              SizedBox(height: 40.h,),

              TextFormField(
                style: TextStyle(color: primaryFontColor),
                decoration: InputDecoration(
                  labelText: 'Mobile no',
                  isCollapsed: true,
                ),
              ),


              SizedBox(height: 40.h,),

              TextFormField(
                style: TextStyle(color: primaryFontColor),
                decoration: InputDecoration(
                  labelText: 'Address',
                  isCollapsed: true,
                ),
              ),

              SizedBox(height: 40.h,),

              TextFormField(
                style: TextStyle(color: primaryFontColor),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  isCollapsed: true,
                ),
              ),


              SizedBox(height: 40.h,),

              TextFormField(
                style: TextStyle(color: primaryFontColor),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  isCollapsed: true,
                ),
              ),

              SizedBox(height: 40.h,),


              ElevatedButton(
                  onPressed: (){},
                  child: Text("Sign Up")
              ),


              Expanded(child: SizedBox.shrink()),
              LoginRegisterFooter(
                  question: 'Already have an account? ',
                  actionText:' Sign In',
                  action: (){
                    Navigator.pushReplacementNamed(context, kRouteLogin);
                  }
              ),
              SizedBox(height: 50.h,),



            ],
          ),
        ),
      ),
    );
  }
}