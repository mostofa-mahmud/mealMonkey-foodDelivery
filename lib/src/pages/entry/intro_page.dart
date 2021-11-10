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
      
      body: PageView.builder(
        itemCount: _data.length,
          itemBuilder: (context, index){
            return Column(
              children: [
                Image.asset(_data[index].imagePath!),
              ],
            );
            },
      ),
    );
  }
}
