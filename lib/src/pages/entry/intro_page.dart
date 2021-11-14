part of pages;

class Intro_page extends StatefulWidget {
  //const Intro_page({Key? key}) : super(key: key);

  @override
  _Intro_pageState createState() => _Intro_pageState();
}

class _Intro_pageState extends State<Intro_page> {


  late final PageController _pageController;
  final List<IntroModel> _data = IntroModel.data;
  int _activeIndex =0;

  @override
  void initState(){
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        _activeIndex = _pageController.page!.round();

      });
    });
  }


  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _data.length,
              itemBuilder: (context, index){
                return Column(
                  children: [
                    SizedBox(height: 150.h,),
                    Image.asset(
                      _data[index].imagePath!,
                      height: 1000.h,
                    ),
                  ],
                );
                },
          ),
          
          Padding(
            padding: EdgeInsets.only(bottom: 900.h),
            child: SliderIndicator(
                length: _data.length,
                activeIndex: _activeIndex,
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
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 700.h),
            child: Text(
                _data[_activeIndex].title!,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: primaryFontColor,
                  fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 400.h),
            child: SizedBox(
              height: 200.h,
              child: Text(
                  _data[_activeIndex].description!,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: secondaryFontColor,
                  height: 4.h
                ),
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
                        if((_activeIndex + 1)>= _data.length) {
                          Navigator.pushReplacementNamed(context, '/starter');
                          return;
                        };
                        _pageController.animateToPage(
                            _activeIndex + 1,
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.easeIn
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                        ),
                        padding: EdgeInsets.all(15),
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
