part of pages;


class EnterNewPassPage extends StatelessWidget {
  const EnterNewPassPage({Key? key}) : super(key: key);

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

        body: Container(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [

              LoginRegisterHeader(
                  centerText: true,
                  title: 'New Password',
                  subTitle: 'Please enter your email to receive\na link to create new password'),

              TextFormField(
                style: TextStyle(color: primaryFontColor),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'New Password',
                  isCollapsed: true,
                ),
              ),


              SizedBox(height: verticalPadding,),


              TextFormField(
                style: TextStyle(color: primaryFontColor),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  isCollapsed: true,
                ),
              ),

              SizedBox(height: verticalPadding * 2,),



              ElevatedButton(
                  onPressed: (){

                    Navigator.of(context).pop();

                  },
                  child: Text("Next")
              ),



            ],
          ),
        )
    );
  }
}