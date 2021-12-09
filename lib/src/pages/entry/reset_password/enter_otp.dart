part of pages;

class EnterOtpPage extends StatefulWidget {
  const EnterOtpPage({Key? key}) : super(key: key);

  @override
  State<EnterOtpPage> createState() => _EnterOtpPageState();
}

class _EnterOtpPageState extends State<EnterOtpPage> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();


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
                    title: 'We have sent an OTP \nto your mobile',
                    subTitle: 'Please enter your email to receive Otp to \ncreate new password'
                ),


                Row(
                  children: [

                    buildOtpValue(focusNode1, onChanged: (val){
                      if(val.isNotEmpty) focusNode2.requestFocus();
                    }),

                    SizedBox(width: horizontalPadding,),

                    buildOtpValue(focusNode2, onChanged: (val){
                      if(val.isNotEmpty) focusNode3.requestFocus();
                      if(val.isEmpty) focusNode1.requestFocus();
                    }),

                    SizedBox(width: horizontalPadding,),

                    buildOtpValue(focusNode3, onChanged: (val){
                      if(val.isNotEmpty) focusNode4.requestFocus();
                      if(val.isEmpty) focusNode2.requestFocus();
                    }),

                    SizedBox(width: horizontalPadding,),

                    buildOtpValue(focusNode4, onChanged: (val){
                      if(val.isEmpty) focusNode3.requestFocus();
                    })

                  ],
                ),



                SizedBox(height: verticalPadding * 2,),



                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> EnterNewPassPage()));
                    },
                    child: Text("Next")
                ),


                SizedBox(height: verticalPadding * 2,),


                LoginRegisterFooter(
                    question: 'Didn\'t received?',
                    actionText: ' Click Here',
                    action: (){

                    }
                )

              ],
            ),
          ),
        )
    );
  }

  Expanded buildOtpValue(FocusNode focusNode, {ValueChanged<String>? onChanged}) {
    return Expanded(
        flex: 1,
        child: TextFormField(
          focusNode: focusNode,
          obscureText: true,
          obscuringCharacter: '*',
          style: TextStyle(
            fontSize: 25,
            color: primaryFontColor,
          ),
          onChanged: onChanged,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              )
          ),
        )
    );
  }
}