part of pages;

class Intro_page extends StatefulWidget {
  //const Intro_page({Key? key}) : super(key: key);

  @override
  _Intro_pageState createState() => _Intro_pageState();
}

class _Intro_pageState extends State<Intro_page> {

  final List<IntroModel> _data = IntroModel.data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: _data.length,
                itemBuilder: (context, index){
                  return Column(
                    children: [
                      SizedBox(height: 150.h,),
                      Image.asset(
                        _data[index].imagePath!,
                        width: 700.w,
                      ),
                    ],
                  );
                  },
            ),
          ),
          
          SliderIndicator(
              length: _data.length,
              activeIndex: 0,
              indicator: Icon(
                  Icons.fiber_manual_record_rounded,
                color: placeholderColor,
                size: 32.w,
              ),
              activeIndicator: Icon(
                  Icons.fiber_manual_record_rounded,
                color: mainColor,
                size: 32.w,
              ),
          ),
          SizedBox(
              height: 150.h,
              child: Text(
                  _data[0].title!,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: secondaryFontColor,
                    fontWeight: FontWeight.bold,
                    height: 4.h
                ),
              )
          ),
          SizedBox(
              height: 150.h,
              child: Text(
                  _data[0].description!,
                style: Theme.of(context).textTheme.caption!.copyWith(
                  color: secondaryFontColor,
                  fontWeight: FontWeight.bold,
                  height: 4.h
                ),
              ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 120.h),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: (){

                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.r)
                          )
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(mainColor),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(15))
                      ),
                      child: Text('Next')
                  ),
                ),
              ],
            ),
          )
          
        ],
      ),
    );
  }
}
